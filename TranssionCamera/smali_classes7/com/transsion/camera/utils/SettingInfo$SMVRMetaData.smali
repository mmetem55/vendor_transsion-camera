.class public Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMVRMetaData"
.end annotation


# instance fields
.field public cusP2BatchSize:I

.field public fpsMax:I

.field public height:I

.field public pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toRequestParams()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2050
    iget v1, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2051
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetaData{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fpsMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cusP2BatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
