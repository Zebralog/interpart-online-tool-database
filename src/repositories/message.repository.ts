import {DefaultCrudRepository} from '@loopback/repository';
import {Message, MessageRelations} from '../models';
import {MemoryDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class MessageRepository extends DefaultCrudRepository<
  Message,
  typeof Message.prototype.id,
  MessageRelations
> {
  constructor(
    @inject('datasources.memory') dataSource: MemoryDataSource,
  ) {
    super(Message, dataSource);
  }
}
