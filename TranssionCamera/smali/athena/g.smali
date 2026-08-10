.class public Lathena/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lathena/g;


# instance fields
.field private b:Lathena/h;

.field private c:Lcom/transsion/athena/config/data/model/e;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Lathena/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/transsion/athena/config/data/model/e;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/e;-><init>()V

    iput-object v0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lathena/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    iput-object p1, p0, Lathena/g;->b:Lathena/h;

    return-void
.end method

.method public static a(Lathena/h;)Lathena/g;
    .locals 2

    .line 925
    sget-object v0, Lathena/g;->a:Lathena/g;

    if-nez v0, :cond_1

    .line 926
    const-class v0, Lathena/g;

    monitor-enter v0

    .line 927
    :try_start_0
    sget-object v1, Lathena/g;->a:Lathena/g;

    if-nez v1, :cond_0

    .line 928
    new-instance v1, Lathena/g;

    invoke-direct {v1, p0}, Lathena/g;-><init>(Lathena/h;)V

    sput-object v1, Lathena/g;->a:Lathena/g;

    .line 930
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 932
    :cond_1
    :goto_0
    sget-object p0, Lathena/g;->a:Lathena/g;

    return-object p0
.end method

.method static synthetic a(Lathena/g;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 924
    iget-object p0, p0, Lathena/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static a(Lathena/g;Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "cfg"

    const-string v2, "table"

    const-string v3, "data"

    const-string v4, "url"

    const-string v5, "ver"

    const-string v6, "pr"

    const-string v7, "stats"

    const-string v8, "frq"

    const-string v9, "ur"

    const-string v10, "iw"

    const-string v11, "s"

    const-string v12, "num"

    const-string v13, "gmax"

    const-string v14, "gmin"

    const-string v15, "cv"

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v2

    .line 351
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v17, v6

    move-object/from16 v6, p2

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/transsion/athena/config/data/model/a;->c(J)V

    .line 355
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/athena/config/data/model/a;->d(Ljava/lang/String;)V

    .line 358
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 359
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x0

    .line 361
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move v6, v4

    .line 362
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_f

    .line 363
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v18, v1

    .line 364
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v19, v3

    const-string v3, "tids"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object/from16 v20, v2

    const/4 v3, 0x0

    .line 365
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_e

    move/from16 v21, v6

    move-object v2, v7

    .line 366
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    .line 367
    invoke-virtual {v0, v6, v7}, Lcom/transsion/athena/config/data/model/a;->a(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v22

    if-nez v22, :cond_2

    move-object/from16 v23, v1

    .line 369
    new-instance v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-direct {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>()V

    .line 370
    invoke-virtual {v1, v6, v7}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTid(J)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/a;->a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    move-object/from16 v22, v1

    goto :goto_2

    :cond_2
    move-object/from16 v23, v1

    :goto_2
    const/4 v1, 0x0

    .line 373
    invoke-virtual {v5, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 374
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 377
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v1

    const-wide/32 v24, 0xea60

    if-lez v6, :cond_4

    int-to-long v6, v6

    mul-long v6, v6, v24

    goto :goto_3

    :cond_4
    int-to-long v6, v6

    :goto_3
    invoke-virtual {v1, v6, v7}, Lcom/transsion/athena/config/data/model/g;->b(J)V

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v5, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 379
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 382
    :cond_5
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/transsion/athena/config/data/model/g;->c(I)V

    const/16 v1, 0x64

    .line 383
    invoke-virtual {v5, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 384
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 385
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 387
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/transsion/athena/config/data/model/g;->b(I)V

    const/4 v6, 0x0

    .line 388
    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 389
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 390
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 392
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/transsion/athena/config/data/model/g;->d(I)V

    const/16 v6, 0xa

    .line 393
    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 394
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 395
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 397
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v7

    move-object/from16 v26, v2

    int-to-long v1, v6

    mul-long v1, v1, v24

    invoke-virtual {v7, v1, v2}, Lcom/transsion/athena/config/data/model/g;->d(J)V

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 399
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 400
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 402
    :cond_9
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/athena/config/data/model/g;->e(I)V

    const/16 v1, 0x64

    .line 403
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 404
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 405
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 407
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/athena/config/data/model/g;->h(I)V

    const/4 v1, 0x0

    .line 408
    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 409
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 410
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 412
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v6, v2

    const-wide/16 v24, 0x3e8

    mul-long v6, v6, v24

    invoke-virtual {v1, v6, v7}, Lcom/transsion/athena/config/data/model/g;->a(J)V

    move-object/from16 v1, v26

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 414
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 415
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 417
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/transsion/athena/config/data/model/g;->g(I)V

    move-object/from16 v2, v17

    const/4 v6, 0x0

    .line 418
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 419
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 420
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 422
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/transsion/athena/config/data/model/g;->f(I)V

    add-int/lit8 v3, v3, 0x1

    move-object v7, v1

    move-object/from16 v17, v2

    move/from16 v6, v21

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_e
    move/from16 v21, v6

    move-object v1, v7

    move-object/from16 v2, v17

    add-int/lit8 v6, v21, 0x1

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto/16 :goto_0

    :cond_f
    move-object/from16 v20, v2

    move-object/from16 v2, v16

    move-object/from16 v1, v20

    .line 427
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 428
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 431
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 433
    invoke-virtual {v2, v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setEvent(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    .line 434
    iget-object v0, v0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_5

    .line 438
    :cond_12
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 439
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v1, "updateAppConfig"

    .line 440
    invoke-static {v1, v0}, Lcom/transsion/ga/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method static a(Lathena/g;Ljava/lang/String;)V
    .locals 10

    const-string v0, "tz"

    const-string v1, "delays"

    const-string v2, "ver"

    const-string v3, "p"

    const-string v4, "networks"

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    :try_start_0
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    .line 889
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cv"

    .line 890
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 891
    invoke-virtual {p0, v6, v7}, Lcom/transsion/athena/config/data/model/d;->d(J)V

    const-string p1, "threshold"

    .line 892
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/transsion/athena/config/data/model/d;->e(J)V

    const-string p1, "once"

    .line 893
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_0

    move p1, v7

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/d;->b(Z)V

    .line 895
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 896
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "url"

    .line 897
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/transsion/athena/config/data/model/d;->c(Ljava/lang/String;)V

    const-string v4, "tids"

    .line 899
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 900
    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/d;->b(Lorg/json/JSONObject;)V

    .line 903
    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 904
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/d;->a(Lorg/json/JSONArray;)V

    .line 907
    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 908
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/transsion/athena/config/data/model/d;->f(J)V

    .line 911
    :cond_3
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 912
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 913
    aget-object v1, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/athena/config/data/model/d;->a(II)V

    .line 916
    :cond_4
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 917
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/d;->b(Ljava/lang/String;)V

    :cond_5
    const-string p1, "geo"

    const/4 v0, 0x6

    .line 920
    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/d;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 922
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string p1, "updateGlobalConfig"

    .line 923
    invoke-static {p1, p0}, Lcom/transsion/ga/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lathena/g;)Lcom/transsion/athena/config/data/model/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    return-object p0
.end method

.method static synthetic c(Lathena/g;)Lathena/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/g;->b:Lathena/h;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "63D4BEBEBC7ABCA4BC6A796B6AB06B766A6C7D706B6B756F70B07B6F71A4A5AEBCB2D4BEBEBC6A69BCA4BC7A6B69B16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6A7BBCA4BC7A6B7BB16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F69BCA4BC7A6B69B06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F7BBCA4BC7A6B7BB06B767D72726A6C65B07B6F71BCB2D4BEBEBC7BBCA4BCAF726F777B6F7078AF68A8AF696E726F7D7A7B6F7078BCB2D4BEBEBC77BCA4BCAF726F777B6F7078AF68ADAF6B797B6C796ABCB2D4BEBEBC69BCA4BCAF7D6A7679707DAF7B76797B736E6F75706AAF68ACAF696E726F7D7ABCB2D4BEBEBC787BBCA4BC68AEAC7BBCB2D4BEBEBC787ABCA4BC68AEAC7ABCB2D4BEBEBC7879BCA4BC68AEAC79BCB2D4BEBEBC7568BCA4BC7D7C7B7A79787776757473AD71706F6EBCB2D4BEBEBC67BCA4BCABA7ADA899A99B9CAD9CA5A6AC9BAEABA9AEADAB99A9ACADA8A79D9D98A9AA9DBCD461D4D4"

    .line 4
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 9
    aget-byte v2, v0, v1

    int-to-char v2, v2

    rsub-int v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 12
    :goto_1
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lathena/h;->a(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lathena/g;->b:Lathena/h;

    sget-object v0, Lcom/transsion/athena/config/data/model/f;->m:[B

    invoke-virtual {p0, v0}, Lathena/h;->a([B)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v1, "initSDKConfig"

    .line 22
    invoke-static {v1, v0}, Lcom/transsion/ga/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lathena/h;->a(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lathena/g;->b:Lathena/h;

    sget-object v0, Lcom/transsion/athena/config/data/model/f;->m:[B

    invoke-virtual {p0, v0}, Lathena/h;->a([B)V

    :goto_2
    return-void

    .line 28
    :goto_3
    iget-object v1, p0, Lathena/g;->b:Lathena/h;

    sget-object v2, Lcom/transsion/athena/config/data/model/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lathena/h;->a(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lathena/g;->b:Lathena/h;

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->m:[B

    invoke-virtual {p0, v1}, Lathena/h;->a([B)V

    .line 31
    throw v0
.end method


# virtual methods
.method public a(J)Lcom/transsion/athena/config/data/model/b;
    .locals 2

    .line 981
    new-instance v0, Lcom/transsion/athena/config/data/model/b;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/b;-><init>()V

    .line 982
    iget-object v1, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/athena/config/data/model/e;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 984
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/f;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 986
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/transsion/athena/config/data/model/f;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 987
    iput-object p1, v0, Lcom/transsion/athena/config/data/model/b;->a:Ljava/lang/String;

    .line 988
    invoke-virtual {p0}, Lathena/g;->e()Landroid/util/Pair;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/athena/config/data/model/b;->b:Landroid/util/Pair;

    .line 989
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->f()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/transsion/athena/config/data/model/b;->c:J

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;"
        }
    .end annotation

    .line 943
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 2

    .line 933
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->a()Ljava/util/List;

    move-result-object p0

    .line 934
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/a;

    .line 935
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    .line 939
    :cond_1
    new-instance v0, Lcom/transsion/athena/config/data/model/a;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/a;-><init>()V

    .line 940
    invoke-virtual {v0, p1}, Lcom/transsion/athena/config/data/model/a;->a(I)V

    .line 941
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lathena/c0;Lathena/c;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 944
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v12, Lathena/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_3

    .line 947
    :cond_0
    iget-object v0, v12, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object v14

    const/16 v15, 0x20

    .line 948
    invoke-virtual {v14, v15}, Lcom/transsion/athena/config/data/model/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, v12, Lathena/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 950
    new-instance v0, Lathena/f;

    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/transsion/athena/config/data/model/d;->h()J

    move-result-wide v4

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lathena/f;-><init>(Lathena/g;Ljava/lang/String;JLcom/transsion/athena/config/data/model/d;Lathena/c;)V

    invoke-virtual {v13, v0}, Lathena/c0;->a(Lathena/x;)Z

    .line 951
    :cond_1
    iget-object v0, v12, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->a()Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/transsion/athena/config/data/model/a;

    .line 954
    invoke-virtual {v14}, Lcom/transsion/athena/config/data/model/d;->c()J

    move-result-wide v9

    .line 955
    invoke-virtual {v7, v9, v10, v15}, Lcom/transsion/athena/config/data/model/a;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 959
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 960
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-static {}, Lcom/transsion/core/utils/AppUtil;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 962
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-static {}, Lcom/transsion/core/utils/AppUtil;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getGAIdInThread()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-static {}, Lcom/transsion/ga/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 967
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 969
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 971
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 972
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/a;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 973
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/a;->b()I

    move-result v4

    if-eq v8, v4, :cond_4

    .line 974
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "dimensionChanged, so set appConfig version to 0"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 975
    invoke-virtual {v7, v2, v3}, Lcom/transsion/athena/config/data/model/a;->c(J)V

    move-wide v5, v2

    goto :goto_2

    :cond_4
    move-wide v5, v0

    .line 979
    :goto_2
    iget-object v0, v12, Lathena/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 980
    new-instance v0, Lathena/d;

    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v3

    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->e()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lathena/d;-><init>(Lathena/g;ILjava/lang/String;JLcom/transsion/athena/config/data/model/a;IJLathena/c;)V

    invoke-virtual {v13, v0}, Lathena/c0;->a(Lathena/x;)Z

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;)V"
        }
    .end annotation

    .line 942
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()Lcom/transsion/athena/config/data/model/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    return-object p0
.end method

.method public b(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->c()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lathena/g;->c()V

    .line 2
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    invoke-virtual {v0}, Lathena/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/e;->a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    iget-object v1, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lathena/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    .line 9
    :goto_0
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public e()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->b()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 6
    :cond_0
    new-instance p0, Landroid/util/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/transsion/athena/config/data/model/f;->n:[B

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->d()V

    .line 2
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lathena/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/transsion/core/utils/AppUtil;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/d;->a(Z)V

    .line 4
    iget-object v0, p0, Lathena/g;->b:Lathena/h;

    iget-object p0, p0, Lathena/g;->c:Lcom/transsion/athena/config/data/model/e;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lathena/h;->b(Ljava/lang/String;)V

    return-void
.end method
