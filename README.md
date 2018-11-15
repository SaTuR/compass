# compass
Las direcciones cardinales incluyen Norte, Este, Sur y Oriente pero también hay direcciones intercardinales como: NorEste, SurEste, NorOriente y SurOriente.  En este proyecto debes crear una aplicación iOS donde uses CoreLocation y los métodos que utilizan sensores para indicarle al usuario en qué dirección cardinal está orientando su dispositivo.

Instrucciones

Crear un nuevo proyecto para iOS de tipo SingleViewApplication llamado compass.

Crear un label con el texto “Orientación”, el label debe estar centrado en la pantalla y tener una fuente Avenir de tamaño 30.

Crear un Outlet del label en el controlador de la escena principal.

Implementar el delegado de CLLocationManager en la clase controladora e implementar el método didUpdateHeading, en el cual deberás actualizar el label de la escena dependiendo del ángulo de rotación del dispositivo con respecto al polo norte geográfico de la tierra.

Mostrar el texto “Orientación: Norte” si el ángulo obtenido está entre 0 y 5 grados ó 355 y 360 grados.

Mostrar el texto “Orientación: Este” si el ángulo obtenido está entre 85 y 95 grados.

Mostrar el texto “Orientación: Sur” si el ángulo obtenido está entre 175 y 185 grados.

Mostrar el texto “Orientación: Oeste” si el ángulo obtenido está entre 265 y 275 grados.

Mostrar “Orientación: NorEste” si el ángulo está entre norte y este.

Mostrar “Orientación: SurEste” si el ángulo está entre sur y este.

Mostrar “Orientación: SurOeste” si el ángulo está entre sur y oeste.

Mostrar “Orientación: NorOeste” si el ángulo está entre norte y oeste.
