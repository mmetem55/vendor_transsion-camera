.class public Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;
.super Ljava/lang/Object;
.source "SeekBarFeatureData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mSeekBarMax:I

.field public mSeekBarMin:I

.field public mSeekBarOptimal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarMax:I

    .line 13
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarMin:I

    .line 14
    iput p3, p0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarOptimal:I

    return-void
.end method

.method public static getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;
    .locals 2

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
