function setupSounds(ctx, state) {
  state.playingAnn = new StateTracker();
  state.playingAnn.setState("");
}

function playAnn(ctx, state, train) {
  let stations = train.getThisRoutePlatforms();
  if (stations.size() <= 1) return;
  let nextIndex = train.getThisRoutePlatformsNextIndex();
  if (nextIndex <= 0 || nextIndex >= stations.size()) return;

  let stationConfig = getStationConfig(stations, nextIndex);
  let nextStationConfig = nextIndex < stations.size() ? getStationConfig(stations, nextIndex) : {};

  if (stationConfig.code === undefined || stationConfig.code === "") {
    state.playingAnn.setState("");
  } else {
    let distLastStation = train.railProgress() - stations.get(nextIndex - 1).distance;
    let distNextStation = stations.get(nextIndex).distance - train.railProgress();
    let isLoopLine = stations.get(0).station.id == stations.get(stations.size() - 1).station.id;
    let soundToPlay;
    if (distNextStation < stationConfig.arriveDistance) {
      if (!!nextStationConfig["tbOnPlat"]) {
        soundToPlay = stationConfig.routeStationCode + "_arr_term";
      }
    } else if (distLastStation > 15) {
      soundToPlay = stationConfig.routeStationCode + "_next";
    } else {
      soundToPlay = "";
    }

    state.playingAnn.setState("mtr:ann_" + soundToPlay);
    if (state.playingAnn.stateNowFirst() && soundToPlay != "") {
      ctx.playAnnSound(Resources.identifier(state.playingAnn.stateNow()), 1, 1);
    }
  }
}
