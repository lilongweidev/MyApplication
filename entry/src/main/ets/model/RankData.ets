export class RankData {
  id: number | string
  name: Resource
  vote: string

  constructor(id: number | string, name: Resource, vote: string) {
    this.id = id;
    this.name = name;
    this.vote = vote;
  }
}