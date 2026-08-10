.class public Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;
.super Ljava/lang/Object;
.source "FaceBeautyCapability.java"


# static fields
.field private static final sFeaturesLevelScope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "ai"

    const-string v1, "on"

    const-string v2, "off"

    const-string v3, "aiv2"

    const-string v4, "pre1"

    const-string v5, "pre2"

    const-string v6, "pre3"

    const-string v7, "custom"

    .line 35
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sSupportedModes:Ljava/util/List;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    .line 46
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sSupportedLevels:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sFeaturesLevelScope:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    sget-object v2, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sFeaturesLevelScope:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getSupportedFaceBeautyLevels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sSupportedLevels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSupportedFaceBeautyModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->sSupportedModes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
