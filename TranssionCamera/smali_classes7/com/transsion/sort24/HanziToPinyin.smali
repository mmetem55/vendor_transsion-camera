.class public Lcom/transsion/sort24/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# static fields
.field private static final SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/transsion/sort24/HanziToPinyin;

.field private static sMuiSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAsciiTransliterator:Landroid/icu/text/Transliterator;

.field private mPinyinTransliterator:Landroid/icu/text/Transliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x410

    .line 231
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v5, 0x35

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v6, 0x36

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v7, 0x37

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v8, 0x38

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v9, 0x39

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x434

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x435

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x436

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x437

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x440

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x441

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x444

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x445

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x446

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x447

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x448

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x449

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v10, 0x451

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x628

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x629

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x621

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x627

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x633

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x634

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x635

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x636

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x630

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x631

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x632

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62c

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x62e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x646

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x647

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x648

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x649

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x641

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x642

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x643

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x644

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x645

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x637

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x638

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x639

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x63a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x5d3

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x5d4

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v11, 0x5d5

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5de

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5db

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5d8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5ea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/transsion/sort24/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v2, 0x5e3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/sort24/HanziToPinyin;->SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;

    .line 641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/transsion/sort24/HanziToPinyin;->SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;

    .line 644
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    .line 90
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sort24/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    const-string v0, "Latin-Ascii"

    .line 92
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sort24/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HanziToPinyin"

    const-string v0, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/sort24/HanziToPinyin;
    .locals 2

    .line 104
    const-class v0, Lcom/transsion/sort24/HanziToPinyin;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/transsion/sort24/HanziToPinyin;->sInstance:Lcom/transsion/sort24/HanziToPinyin;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/transsion/sort24/HanziToPinyin;

    invoke-direct {v1}, Lcom/transsion/sort24/HanziToPinyin;-><init>()V

    sput-object v1, Lcom/transsion/sort24/HanziToPinyin;->sInstance:Lcom/transsion/sort24/HanziToPinyin;

    .line 108
    :cond_0
    sget-object v1, Lcom/transsion/sort24/HanziToPinyin;->sInstance:Lcom/transsion/sort24/HanziToPinyin;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public hasChineseTransliterator()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/sort24/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/transsion/sort24/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/transsion/sort24/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
