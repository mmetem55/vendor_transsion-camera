.class public Lathena/e0;
.super Lathena/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lathena/x<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lathena/x;-><init>()V

    .line 2
    iput-object p1, p0, Lathena/e0;->d:Ljava/util/List;

    .line 3
    iput-wide p2, p0, Lathena/e0;->e:J

    .line 4
    iput-object p4, p0, Lathena/e0;->f:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lathena/e0;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    const-string p0, "_ext"

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 246
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    array-length p3, p3

    const/16 v1, 0x7d0

    if-le p3, v1, :cond_3

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 264
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 265
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorMsg"

    .line 266
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 269
    :cond_3
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "eparam"

    .line 272
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 274
    :goto_2
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    const-string v2, "app_active"

    const-string v3, "opid"

    .line 1
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2
    iget-object v0, v1, Lathena/e0;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move v6, v5

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getPvTid()J

    move-result-wide v6

    invoke-static {v6, v7}, Lathena/k0;->a(J)I

    move-result v0

    move v6, v0

    .line 5
    :goto_0
    invoke-static {v4}, Lathena/k0;->b(Landroid/content/Context;)Z

    move-result v7

    .line 7
    iget-object v0, v1, Lathena/e0;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/AppIdData;

    iget v8, v0, Lcom/transsion/athena/data/AppIdData;->d:I

    .line 8
    iget-object v0, v1, Lathena/e0;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/AppIdData;

    iget-object v9, v0, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, v1, Lathena/e0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 11
    iget-object v0, v1, Lathena/e0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v5

    move/from16 v16, v12

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v14, "net"

    const-string v15, "ts"

    const-string v5, "event"

    move-object/from16 v17, v9

    const-string v9, "tid"

    move/from16 v18, v8

    const-string v19, ""

    if-eqz v0, :cond_20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/transsion/athena/data/AppIdData;

    move-object/from16 v20, v11

    .line 13
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 14
    iget-object v0, v8, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    const/16 v22, 0x0

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move-object/from16 v23, v3

    const-string v3, "eparam"

    if-eqz v0, :cond_15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v4

    move-object v4, v0

    check-cast v4, Lcom/transsion/athena/data/f;

    .line 15
    iget-object v0, v4, Lcom/transsion/athena/data/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/f$a;

    move-object/from16 v26, v13

    .line 17
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v27, v6

    move/from16 v28, v7

    :try_start_1
    iget-wide v6, v4, Lcom/transsion/athena/data/f;->a:J

    .line 18
    invoke-virtual {v13, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object/from16 v7, v19

    .line 19
    :cond_1
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v7, v12

    :try_start_2
    iget-wide v12, v0, Lcom/transsion/athena/data/f$a;->b:J

    .line 20
    invoke-virtual {v6, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v0, Lcom/transsion/athena/data/f$a;->d:I

    .line 21
    invoke-virtual {v6, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 22
    iget-object v12, v0, Lcom/transsion/athena/data/f$a;->c:Ljava/lang/String;

    if-nez v12, :cond_2

    move-object/from16 v12, v19

    .line 24
    :cond_2
    iget-object v13, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v13, :cond_3

    move-object/from16 v13, v19

    :cond_3
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v29, v15

    const-string v15, "app_heartbeat"

    move-object/from16 v30, v14

    const-string v14, "app_launch"

    move/from16 v31, v7

    const-string v7, "page_enter"

    if-nez v13, :cond_8

    :try_start_3
    iget-object v13, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v13, :cond_4

    move-object/from16 v13, v19

    .line 25
    :cond_4
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v13, :cond_5

    move-object/from16 v13, v19

    .line 26
    :cond_5
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v13, :cond_6

    move-object/from16 v13, v19

    .line 27
    :cond_6
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_4

    .line 45
    :cond_7
    invoke-virtual {v6, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v33, v5

    move-object/from16 v32, v10

    goto/16 :goto_8

    .line 46
    :cond_8
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5

    :cond_9
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    .line 48
    :goto_5
    iget-object v0, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    move-object/from16 v0, v19

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v32, v10

    const v10, -0x6b598fa2

    move-object/from16 v33, v5

    const/4 v5, 0x3

    if-eq v13, v10, :cond_e

    const v10, 0x2ce78ae4

    if-eq v13, v10, :cond_d

    const v10, 0x3f912f91

    if-eq v13, v10, :cond_c

    const v10, 0x605d6528

    if-eq v13, v10, :cond_b

    goto :goto_6

    :cond_b
    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v0, -0x1

    :goto_7
    if-eqz v0, :cond_13

    const/4 v7, 0x1

    if-eq v0, v7, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_11

    if-eq v0, v5, :cond_10

    goto :goto_8

    .line 59
    :cond_10
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lathena/e0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 60
    :cond_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lathena/e0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 61
    :cond_12
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lathena/e0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 62
    :cond_13
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lathena/e0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 77
    :goto_8
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v33, v5

    move-object/from16 v32, v10

    goto :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v31, v7

    move-object/from16 v32, v10

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v33, v5

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v33, v5

    move/from16 v27, v6

    move/from16 v28, v7

    :goto_9
    move-object/from16 v32, v10

    move/from16 v31, v12

    :goto_a
    move-object/from16 v30, v14

    move-object/from16 v29, v15

    .line 79
    :goto_b
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_c
    move-object/from16 v13, v26

    move/from16 v6, v27

    move/from16 v7, v28

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move/from16 v12, v31

    move-object/from16 v10, v32

    move-object/from16 v5, v33

    goto/16 :goto_3

    :cond_14
    move-object/from16 v33, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v32, v10

    move/from16 v31, v12

    move-object/from16 v26, v13

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    .line 82
    iget v0, v4, Lcom/transsion/athena/data/f;->e:I

    add-int v22, v22, v0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    goto/16 :goto_2

    :cond_15
    move-object/from16 v24, v4

    move-object/from16 v33, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v32, v10

    move/from16 v31, v12

    move-object/from16 v26, v13

    .line 85
    iget v0, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    move/from16 v5, v27

    if-ne v0, v5, :cond_1a

    .line 87
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v1, Lathena/e0;->g:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 90
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_16
    move-object/from16 v3, v19

    .line 92
    :goto_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_e

    :cond_17
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 93
    :goto_e
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->m()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lathena/e0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 94
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v6, 0x270f

    cmp-long v3, v3, v6

    if-gez v3, :cond_18

    .line 95
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v3

    move-object/from16 v4, v33

    .line 96
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lathena/a;->b(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 98
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-virtual {v0, v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    .line 103
    :cond_18
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    .line 107
    sget-object v3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_19
    :goto_10
    move/from16 v3, v22

    const/16 v16, 0x1

    goto :goto_11

    :cond_1a
    move/from16 v3, v22

    .line 114
    :goto_11
    :try_start_6
    iget-object v0, v8, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_12

    .line 117
    :cond_1b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v8, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    :goto_12
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    const-string v6, "appid"

    :try_start_7
    iget v7, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    .line 120
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    const-string v6, "hostid"

    .line 121
    :try_start_8
    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    const-string v6, "pkg"

    :try_start_9
    const-string v7, "pkgName"

    .line 122
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1c

    move-object/from16 v7, v19

    :cond_1c
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    const-string v6, "vn"

    :try_start_a
    const-string v7, "versionName"

    .line 123
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1d

    move-object/from16 v7, v19

    :cond_1d
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    const-string v6, "vc"

    :try_start_b
    const-string v7, "versionCode"

    .line 124
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e

    move-object/from16 v7, v19

    :cond_1e
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    const-string v6, "sdkv"

    const-string v7, "2.3.3.9"

    .line 125
    :try_start_c
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    const-string v6, "ins"

    :try_start_d
    const-string v7, "installer"

    .line 126
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    move-object/from16 v0, v19

    :cond_1f
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "isfl"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move/from16 v6, v28

    .line 127
    :try_start_e
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "cnt"

    .line 128
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "events"

    .line 129
    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    move-object/from16 v7, v32

    .line 130
    :try_start_f
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    move/from16 v6, v28

    :goto_13
    move-object/from16 v7, v32

    .line 132
    :goto_14
    sget-object v4, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_15
    add-int v12, v31, v3

    .line 135
    iget v0, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v3

    move-object v10, v7

    move-object/from16 v9, v17

    move/from16 v8, v18

    move-object/from16 v11, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move v7, v6

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_20
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object v4, v5

    move v6, v7

    move-object v7, v10

    move/from16 v31, v12

    move-object v3, v13

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    const/4 v8, 0x0

    .line 138
    invoke-static {v8}, Lcom/transsion/ga/e;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    const-string v8, "channel"

    .line 142
    :try_start_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->h()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_21

    move-object/from16 v10, v19

    :cond_21
    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object/from16 v10, v23

    move-object/from16 v8, v24

    .line 143
    :try_start_12
    invoke-static {v8, v10}, Lathena/k0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_22

    move-object/from16 v11, v19

    :cond_22
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    const-string v10, "tsid"

    :try_start_13
    const-string v11, "oneid"

    .line 144
    invoke-static {v8, v11}, Lathena/k0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_23

    move-object/from16 v11, v19

    :cond_23
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    const-string v10, "vaid"

    .line 145
    :try_start_14
    invoke-static {}, Lathena/l0;->a()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_24

    move-object/from16 v11, v19

    :cond_24
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->i()Lorg/json/JSONObject;

    move-result-object v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    const-string v11, "UTF-8"

    if-eqz v10, :cond_26

    .line 148
    :try_start_15
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v12

    if-lez v12, :cond_26

    .line 149
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    array-length v12, v12
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    const/16 v13, 0x7d0

    const-string v14, "cparam"

    if-le v12, v13, :cond_25

    .line 151
    :try_start_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    const-string v13, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    const/4 v15, 0x1

    :try_start_17
    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v5, v15

    invoke-static {v10, v13, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 152
    sget-object v10, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v10, v5}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 153
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "errorMsg"

    .line 154
    invoke-virtual {v10, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    .line 157
    :cond_25
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_26
    :goto_16
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    const-string v10, "tz"

    .line 162
    :try_start_18
    invoke-static {}, Lathena/k0;->b()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_27

    move-object/from16 v12, v19

    :cond_27
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    const-string v10, "gaid"

    .line 164
    :try_start_19
    invoke-static {}, Lathena/k0;->a()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_28

    move-object/from16 v12, v19

    :cond_28
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    const-string v10, "tuid"

    .line 165
    :try_start_1a
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->b()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_29

    move-object/from16 v12, v19

    :cond_29
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    const-string v10, "actype"

    .line 166
    :try_start_1b
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->c()S

    move-result v12

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    const-string v10, "osver"

    .line 167
    :try_start_1c
    invoke-static {}, Lcom/transsion/ga/e;->e()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2a

    move-object/from16 v12, v19

    :cond_2a
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    const-string v10, "aver"

    :try_start_1d
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v12, :cond_2b

    move-object/from16 v12, v19

    .line 168
    :cond_2b
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    const-string v10, "build"

    :try_start_1e
    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v12, :cond_2c

    move-object/from16 v12, v19

    .line 169
    :cond_2c
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    const-string v10, "lang"

    .line 170
    :try_start_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2d

    move-object/from16 v12, v19

    :cond_2d
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a

    const-string v10, "brand"

    :try_start_20
    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v12, :cond_2e

    move-object/from16 v12, v19

    .line 171
    :cond_2e
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a

    const-string v10, "model"

    :try_start_21
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v12, :cond_2f

    move-object/from16 v12, v19

    .line 172
    :cond_2f
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 173
    invoke-static {v8}, Lathena/k0;->a(Landroid/content/Context;)Lathena/k0$a;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object/from16 v12, v30

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a

    const-string v10, "uts"

    .line 174
    :try_start_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "try"
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a

    move/from16 v15, v18

    .line 175
    :try_start_23
    invoke-virtual {v5, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9

    const-string v10, "mcc"

    .line 176
    :try_start_24
    invoke-static {}, Lcom/transsion/ga/e;->c()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_30

    move-object/from16 v12, v19

    :cond_30
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    const-string v10, "mnc"

    .line 177
    :try_start_25
    invoke-static {}, Lcom/transsion/ga/e;->d()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_31

    move-object/from16 v12, v19

    :cond_31
    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9

    const-string v10, "ekey"

    .line 178
    :try_start_26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "appids"

    .line 179
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isIMEIEnable()Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9

    if-eqz v5, :cond_33

    const-string v5, "iid"

    if-nez v2, :cond_32

    move-object/from16 v7, v19

    goto :goto_17

    :cond_32
    move-object v7, v2

    .line 181
    :goto_17
    :try_start_27
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9

    move-object v11, v0

    goto :goto_19

    :catch_9
    move-exception v0

    goto :goto_18

    :catch_a
    move-exception v0

    move/from16 v15, v18

    goto :goto_18

    :catch_b
    move-exception v0

    move/from16 v15, v18

    move-object/from16 v8, v24

    .line 186
    :goto_18
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 189
    :goto_19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lathena/k0;->a()Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 191
    invoke-static {}, Lcom/transsion/ga/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 196
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->p()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_36
    const/4 v5, 0x1

    .line 198
    invoke-static/range {v17 .. v17}, Lcom/transsion/athena/config/data/model/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    move-object v10, v2

    .line 200
    iget-object v14, v1, Lathena/e0;->f:Ljava/lang/String;

    move/from16 v12, v31

    move-object v13, v3

    move v2, v15

    move-object/from16 v3, v29

    move-object v15, v0

    invoke-static/range {v10 .. v15}, Lathena/y;->a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lathena/d0;

    move-result-object v0

    .line 206
    iget-object v5, v0, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v5, Lathena/g0;

    iget-wide v10, v1, Lathena/e0;->e:J

    iput-wide v10, v5, Lathena/g0;->b:J

    .line 207
    iget-object v7, v1, Lathena/e0;->d:Ljava/util/List;

    iput-object v7, v5, Lathena/g0;->a:Ljava/util/List;

    .line 208
    iput v2, v5, Lathena/g0;->d:I

    .line 210
    iget v2, v0, Lathena/d0;->a:I

    if-eqz v2, :cond_39

    .line 211
    iget-object v2, v5, Lathena/g0;->e:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 212
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostBulkEventTask requestByPost error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v4, Lathena/g0;

    iget-object v4, v4, Lathena/g0;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 214
    :cond_37
    iget-object v2, v1, Lathena/x;->b:Landroid/os/Handler;

    const/16 v3, 0x133

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 215
    iget-object v0, v0, Lathena/d0;->b:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v0, v1, Lathena/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_38
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 218
    :cond_39
    iget-object v2, v1, Lathena/x;->b:Landroid/os/Handler;

    const/16 v5, 0x132

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 219
    iget-object v0, v0, Lathena/d0;->b:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v16, :cond_3a

    const/16 v0, 0x64

    goto :goto_1b

    :cond_3a
    const/4 v0, 0x0

    .line 220
    :goto_1b
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 221
    iget-object v0, v1, Lathena/x;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    if-eqz v6, :cond_3b

    .line 224
    invoke-static {v8}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v0

    const-string v2, "first_launch"

    const-string v5, "false"

    invoke-virtual {v0, v2, v5}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_3b
    invoke-static {}, Lathena/k0;->c()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 228
    iget-object v0, v1, Lathena/e0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/AppIdData;

    .line 229
    iget-object v0, v0, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/transsion/athena/data/f;

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    iget-object v0, v5, Lcom/transsion/athena/data/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/f$a;

    .line 233
    :try_start_28
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    .line 234
    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    iget-wide v10, v5, Lcom/transsion/athena/data/f;->a:J

    .line 235
    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    iget-wide v10, v0, Lcom/transsion/athena/data/f$a;->b:J

    .line 236
    invoke-virtual {v8, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_c

    const-string v10, "_eparam"

    :try_start_29
    iget-object v0, v0, Lcom/transsion/athena/data/f$a;->c:Ljava/lang/String;

    .line 237
    invoke-virtual {v8, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_c

    goto :goto_1d

    :catch_c
    move-exception v0

    .line 240
    sget-object v8, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1d

    .line 243
    :cond_3e
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    iget-wide v11, v5, Lcom/transsion/athena/data/f;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget v11, v5, Lcom/transsion/athena/data/f;->e:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const-string v11, "##TID_ath_str$%d$upload$%d"

    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 245
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    iget-wide v10, v5, Lcom/transsion/athena/data/f;->a:J

    iget v5, v5, Lcom/transsion/athena/data/f;->e:I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v10, v11, v5, v6}, Lathena/u;->a(JILjava/lang/String;)V

    goto/16 :goto_1c

    :goto_1e
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "up_bulk"

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of p0, p1, Lathena/e0;

    const/4 p0, 0x0

    return p0
.end method
