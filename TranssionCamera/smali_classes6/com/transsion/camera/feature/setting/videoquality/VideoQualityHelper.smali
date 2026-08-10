.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;
.super Ljava/lang/Object;
.source "VideoQualityHelper.java"


# static fields
.field public static final QUALITY_QHD:I = 0xb

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x3f3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sTimeLapseVideoQualities:[I

.field public static sVideoQualities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 16
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sTimeLapseVideoQualities:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xb
        0x6
        0x5
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x3f0
        0x3f3
        0x3ee
        0x3ed
        0x3ec
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
