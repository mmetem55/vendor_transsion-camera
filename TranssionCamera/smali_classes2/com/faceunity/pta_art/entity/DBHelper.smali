.class public Lcom/faceunity/pta_art/entity/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static volatile INSTANCE:Lcom/faceunity/pta_art/entity/DBHelper;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DBHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/entity/DBHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/faceunity/pta_art/entity/DBHelper;->INSTANCE:Lcom/faceunity/pta_art/entity/DBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "avatar_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 66
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;
    .locals 2

    const-class v0, Lcom/faceunity/pta_art/entity/DBHelper;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/faceunity/pta_art/entity/DBHelper;->INSTANCE:Lcom/faceunity/pta_art/entity/DBHelper;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/faceunity/pta_art/entity/DBHelper;

    invoke-direct {v1, p0}, Lcom/faceunity/pta_art/entity/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/faceunity/pta_art/entity/DBHelper;->INSTANCE:Lcom/faceunity/pta_art/entity/DBHelper;

    .line 62
    :cond_0
    sget-object p0, Lcom/faceunity/pta_art/entity/DBHelper;->INSTANCE:Lcom/faceunity/pta_art/entity/DBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deleteAvatarById(Ljava/lang/String;)I
    .locals 2

    .line 186
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "avatar_history"

    const-string v1, "id=?"

    .line 187
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 188
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return p1
.end method

.method public deleteHistoryByDir(Ljava/lang/String;)Z
    .locals 3

    .line 179
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "avatar_history"

    const-string v2, "dir=?"

    .line 180
    invoke-virtual {p0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v0
.end method

.method public getAllAvatarP2As()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 284
    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getFFDefaultAvatarList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarList()Ljava/util/List;

    move-result-object v0

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getAllHistoryItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 291
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getAllHistoryItems()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from avatar_history"

    .line 202
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 203
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "id"

    .line 206
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "body"

    .line 207
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dir"

    .line 208
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "head"

    .line 209
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "gender"

    .line 210
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "img_big_thumbnal"

    .line 211
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "img_small_thumbnal"

    .line 212
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "hair_index"

    .line 213
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "hair_type"

    .line 214
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "glasses_index"

    .line 215
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "clothes_index"

    .line 216
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "beard_index"

    .line 217
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v1, "eyelash_index"

    .line 218
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 p0, v0

    const-string v0, "eyebrow_index"

    .line 219
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v16, v3

    const-string v3, "eyepupil_index"

    .line 220
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v4

    const-string v4, "facemake_index"

    .line 221
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "hat_index"

    .line 222
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "shoe_index"

    .line 223
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "skin_color_values"

    .line 224
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "lip_color_values"

    .line 225
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "iris_color_values"

    .line 226
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "hair_color_values"

    .line 227
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "glasses_color_values"

    .line 228
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "glasses_frame_color_values"

    .line 229
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "beard_color_values"

    .line 230
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "hat_color_values"

    .line 231
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 232
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_3

    move/from16 v28, v4

    .line 233
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v29, v5

    .line 234
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v30, v6

    .line 235
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v31, v7

    .line 236
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v32, v9

    .line 237
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-static {v6}, Lcom/faceunity/pta_art/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    invoke-static {v7}, Lcom/faceunity/pta_art/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    invoke-static {v9}, Lcom/faceunity/pta_art/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_0

    goto/16 :goto_2

    :cond_0
    move/from16 v33, v10

    .line 245
    new-instance v10, Lcom/faceunity/pta_art/entity/AvatarPTA;

    move/from16 v34, v3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v10, v5, v3, v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    invoke-virtual {v10, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBodyFile(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10, v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBigThumbNail(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v10, v9}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setSmallThumbNail(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairIndex(I)V

    .line 250
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v10, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setDualHairColor(Z)V

    .line 251
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesIndex(I)V

    .line 252
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setClothesIndex(I)V

    .line 253
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBeardIndex(I)V

    .line 254
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setEyelashIndex(I)V

    .line 255
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setEyebrowIndex(I)V

    move/from16 v3, v34

    .line 256
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setPupilIndex(I)V

    move/from16 v4, v18

    .line 257
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setFacemakeIndex(I)V

    move/from16 v5, v19

    .line 258
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHatIndex(I)V

    move/from16 v6, v20

    .line 259
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setShoeIndex(I)V

    move/from16 v18, v0

    move v9, v1

    move/from16 v7, v21

    .line 260
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setSkinColorValue(D)V

    move/from16 v34, v3

    move v1, v4

    move/from16 v0, v22

    .line 261
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setLipColorValue(D)V

    move/from16 v22, v0

    move v4, v1

    move/from16 v3, v23

    .line 262
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setIrisColorValue(D)V

    move/from16 v23, v3

    move v1, v4

    move/from16 v0, v24

    .line 263
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairColorValue(D)V

    move/from16 v24, v0

    move v4, v1

    move/from16 v3, v25

    .line 264
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesColorValue(D)V

    move/from16 v25, v3

    move v1, v4

    move/from16 v0, v26

    .line 265
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesFrameColorValue(D)V

    move/from16 v26, v0

    move v4, v1

    move/from16 v3, v27

    .line 266
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBeardColorValue(D)V

    move/from16 v27, v3

    move v1, v4

    move/from16 v0, v28

    .line 267
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHatColorValue(D)V

    move/from16 v28, v0

    move v4, v1

    move/from16 v3, v17

    .line 268
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setIdCompat(J)V

    move-object/from16 v0, v16

    .line 269
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_2
    :goto_2
    move v9, v1

    move/from16 v34, v3

    move/from16 v33, v10

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v18, v0

    move-object/from16 v0, v16

    .line 241
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    :goto_3
    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move v1, v9

    move/from16 v0, v18

    move/from16 v5, v29

    move/from16 v6, v30

    move/from16 v7, v31

    move/from16 v9, v32

    move/from16 v10, v33

    move/from16 v3, v34

    move/from16 v18, v4

    move/from16 v4, v28

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v16

    .line 273
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 277
    sget-object v1, Lcom/faceunity/pta_art/entity/DBHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllHistoryItems SQLiteCantOpenDatabaseException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultAllAvatarP2As()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarList()Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getAllHistoryItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 303
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public insertHistory(Lcom/faceunity/pta_art/entity/AvatarPTA;)Ljava/lang/Long;
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBodyFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dir"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img_big_thumbnal"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img_small_thumbnal"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "head"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hair_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hair_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "glasses_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getClothesIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clothes_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "beard_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyelashIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eyelash_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyebrowIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eyebrow_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getPupilIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eyepupil_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getFacemakeIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "facemake_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hat_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getShoeIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shoe_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "skin_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 131
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lip_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 132
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIrisColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "iris_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 133
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "hair_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "glasses_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 135
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesFrameColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "glasses_frame_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 136
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "beard_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 137
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatColorValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "hat_color_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 138
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "gender"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const-string v1, "avatar_history"

    .line 139
    invoke-virtual {p0, v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 140
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "create table avatar_history(id integer primary key, body text, dir text, style integer, img_big_thumbnal text, img_small_thumbnal text, head text, gender integer, hair_index integer, hair_type integer, glasses_index integer, clothes_index integer, beard_index integer, eyelash_index integer, eyebrow_index integer, eyepupil_index integer, facemake_index integer, hat_index integer, shoe_index integer, skin_color_values double, lip_color_values double, iris_color_values double, hair_color_values double, glasses_color_values double, glasses_frame_color_values double, beard_color_values double, hat_color_values double)"

    .line 71
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 106
    sget-object p2, Lcom/faceunity/pta_art/constant/Constant;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/faceunity/pta_art/utils/FileUtil;->deleteDirAndFile(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS avatar_history"

    .line 107
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/entity/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
