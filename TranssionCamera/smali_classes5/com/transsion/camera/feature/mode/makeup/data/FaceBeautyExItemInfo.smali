.class public Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;
.super Ljava/lang/Object;
.source "FaceBeautyExItemInfo.java"


# static fields
.field public static final FEATURE_AI:I = 0x2

.field public static final FEATURE_BROWN:I = 0xd

.field public static final FEATURE_CLOSE:I = 0x0

.field public static final FEATURE_COLD:I = 0xb

.field public static final FEATURE_CUTTING_FACE:I = 0x7

.field public static final FEATURE_EYE:I = 0x6

.field public static final FEATURE_FACE:I = 0x5

.field public static final FEATURE_FIVE_SENSES:I = 0xe

.field public static final FEATURE_HEAD:I = 0x9

.field public static final FEATURE_NEUTRAL:I = 0xa

.field public static final FEATURE_NOSE:I = 0x8

.field public static final FEATURE_RESET:I = 0x1

.field public static final FEATURE_SOFTEN:I = 0x3

.field public static final FEATURE_WARM:I = 0xc

.field public static final FEATURE_WHITEN:I = 0x4


# instance fields
.field public final drawableId:I

.field public final featureId:I

.field public final key:Ljava/lang/String;

.field public titleId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 31
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    return-void
.end method
