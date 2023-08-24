export class CreateRouteDto {
    name: string
    source: Coord
    destination: Coord
}

type Coord = {
    lng: number
    lat: number
}