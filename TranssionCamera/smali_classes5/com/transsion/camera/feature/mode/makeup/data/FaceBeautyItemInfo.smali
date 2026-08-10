.class public Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;
.super Ljava/lang/Object;
.source "FaceBeautyItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FEATURE_AI:I = 0x1

.field public static final FEATURE_EYE:I = 0x5

.field public static final FEATURE_FACE:I = 0x4

.field public static final FEATURE_RESET:I = 0x0

.field public static final FEATURE_SOFTEN:I = 0x2

.field public static final FEATURE_WHITEN:I = 0x3


# instance fields
.field public final drawableId:I

.field public final featureId:I

.field public final key:Ljava/lang/String;

.field public final layoutId:I

.field public titleId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->drawableId:I

    .line 24
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->layoutId:I

    .line 25
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->titleId:I

    return-void
.end method
