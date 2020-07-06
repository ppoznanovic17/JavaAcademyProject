import {Student} from '../student';
import {Assistant} from '../assistant';
import {Professor} from '../professor';

export class SubjectResDto {

  public id:number
  public name: string
  public students: Student[]
  public assistants: Assistant[]
  public professor: Professor



}
