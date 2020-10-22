import {Entity, model, property} from '@loopback/repository';

@model()
export class Message extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  id?: number;

  @property({
    type: 'string',
    required: true,
  })
  bell_id: string;

  @property({
    name: 'message',
    description: "The main message content.",
    type: 'string',
    'dataType': "text",
    required: true,
  })
  message: string;

  @property({
    type: 'string',
    required: true,
  })
  language: string;

  @property({
    type: 'object',
  })
  translations?: object;

  @property({
    type: 'array',
    itemType: 'string'
  })
  tags?: string[];

  @property({
    type: 'object',
  })
  location?: object;

  @property({
    type: 'date',
  })
  timestamp?: string;


  constructor(data?: Partial<Message>) {
    super(data);
  }
}

export interface MessageRelations {
  // describe navigational properties here
}

export type MessageWithRelations = Message & MessageRelations;
