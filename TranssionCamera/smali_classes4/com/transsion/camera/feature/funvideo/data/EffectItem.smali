.class public Lcom/transsion/camera/feature/funvideo/data/EffectItem;
.super Ljava/lang/Object;
.source "EffectItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FOLDER_FORGROUND:Ljava/lang/String; = "forground"

.field private static final FOLDER_MUSIC:Ljava/lang/String; = "music"

.field private static final FOLDER_NORMAL:Ljava/lang/String; = "normal"

.field public static final STATE_DOWNLOADING:Ljava/lang/String; = "downloading"

.field public static final STATE_NEED_BUNDLE:Ljava/lang/String; = "need_bundle"

.field public static final STATE_NEED_ICON:Ljava/lang/String; = "need_icon"

.field public static final STATE_NEED_UPDATE:Ljava/lang/String; = "need_update"

.field public static final STATE_READY_TO_USE:Ljava/lang/String; = "ready_to_use"

.field public static final STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TYPE_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "music"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field public fileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasMusic:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mCurrentSize:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mEffect:Lcom/faceunity/entity/Effect;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mIcon:Landroid/graphics/Bitmap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mIconRes:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mJumpIntent:Landroid/content/Intent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EffectItem"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mCurrentSize:J

    const-string v0, "unknown"

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mState:Ljava/lang/String;

    return-void
.end method

.method private createIcon()Landroid/graphics/Bitmap;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getImgUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getIconPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIcon iconPath is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getIconPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2

    .line 220
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 220
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;
    .locals 2

    .line 237
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 238
    const-class v1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    return-object p0
.end method

.method public static fromJsonList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 243
    new-instance v1, Lcom/transsion/camera/feature/funvideo/data/EffectItem$1;

    invoke-direct {v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 244
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getFolderByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "music"

    const-string v2, "normal"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "foreground"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_1

    return-object v2

    :cond_1
    return-object v1

    :cond_2
    const-string p0, "forground"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTypeByFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "music"

    const-string v2, "normal"

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "forground"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string p0, "none"

    return-object p0

    :pswitch_0
    const-string p0, "foreground"

    return-object p0

    :pswitch_1
    return-object v1

    :pswitch_2
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x62aaeb90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBundleName()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getCoverPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSize()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mCurrentSize:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffect()Lcom/faceunity/entity/Effect;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    return-object p0
.end method

.method public getEffectType()I
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getEffectType()I

    move-result p0

    return p0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getFilterName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->createIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mIcon:Landroid/graphics/Bitmap;

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->iconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getIconRes()I
    .locals 0

    .line 198
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mIconRes:I

    return p0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getImgUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJumpIntent()Landroid/content/Intent;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mJumpIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMaxFace()I
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getMaxFace()I

    move-result p0

    return p0
.end method

.method public getMusicPath()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->size:J

    return-wide v0
.end method

.method public getSplitType()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getSplitType()I

    move-result p0

    return p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hasMusic()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic:Z

    return p0
.end method

.method public setCurrentSize(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mCurrentSize:J

    return-void
.end method

.method public setEffect(Lcom/faceunity/entity/Effect;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getMusicPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic:Z

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mIconRes:I

    return-void
.end method

.method public setJumpIntent(Landroid/content/Intent;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mJumpIntent:Landroid/content/Intent;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->size:J

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mState:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->type:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 230
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 231
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nEffectItem@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasMusic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->hasMusic:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
