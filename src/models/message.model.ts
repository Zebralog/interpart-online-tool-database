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
    name: 'bell_id',
    description: "The source bell UUID.",
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
    name: 'language',
    description: "The main message language code.",
    required: true,
  })
  language: string;

  @property({
    type: 'object',
    name: 'translations',
    description: "Key/value object with message translations (keys are language codes).",
  })
  translations?: object;

  @property({
    type: 'array',
    itemType: 'string',
    name: 'tags',
    description: "List of tags associated to the message.",
  })
  tags?: string[];

  @property({
    type: 'object',
    name: 'location',
    description: "[lat,lng] object with the bell's location (at the time the message was sent).",
  })
  location?: object;

  @property({
    type: 'date',
    name: 'timestamp',
    description: "Date/time string (eg, '2020-10-22T07:37:45.517Z'). If null will default on message's creation timestamp.",
    'default': "$now"
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
