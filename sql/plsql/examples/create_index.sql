CREATE INDEX "NORTHWIND"."IDX_CUSTOMERS_REGION" ON "NORTHWIND"."CUSTOMERS" ("REGION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

CREATE INDEX INDEX_SYS_LOG_YEAR ON SYS_LOG (YEAR)
    GLOBAL PARTITION BY RANGE (YEAR)
      (PARTITION p1 VALUES LESS THAN (1970),
       PARTITION p2 VALUES LESS THAN (2000),
       PARTITION p2 VALUES LESS THAN (2030),
       PARTITION p3 VALUES LESS THAN (MAXVALUE));

CREATE UNIQUE INDEX order_index ON t_order (order_id) IMMEDIATE INVALIDATION;
CREATE UNIQUE INDEX order_index ON t_order (order_id) DEFERRED INVALIDATION;
