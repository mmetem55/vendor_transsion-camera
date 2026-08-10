.class public Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;
.super Ljava/lang/Object;
.source "BiDiBarFeatureData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mSeekBarMax:I

.field public final mSeekBarMin:I

.field public final mSeekBarOptimal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMax:I

    .line 14
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMin:I

    .line 15
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarOptimal:I

    return-void
.end method

.method public static getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;
    .locals 2

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
