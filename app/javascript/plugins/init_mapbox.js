import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


const initMapbox = () => {
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      console.log([marker.lng, marker.lat])
      bounds.extend([marker.lng, marker.lat])
    });

    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    console.log(markers)
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
    });

    map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
    }));

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      const element = document.createElement('div');
        element.className = 'marker rounded-circle';
        element.style.backgroundImage = `url('${marker.avatar}')`;
        element.style.backgroundSize = 'cover';
        element.style.repeat = 'no-repeat';
        element.style.width = '40px';
        element.style.height = '40px';

      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });

    fitMapToMarkers(map, markers);

  }

};

export { initMapbox }
