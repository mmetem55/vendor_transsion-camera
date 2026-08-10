.class public Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;
.super Ljava/lang/Object;
.source "SlimBodyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ARM_SLIM:I = 0xc

.field public static final BELLY_SLIM:I = 0xb

.field public static final BODY_SLIM:I = 0x3

.field public static final BUTT_PLUMP:I = 0x7

.field public static final CHEST_PLUMP:I = 0xa

.field public static final FEATURE_AI:I = 0x2

.field public static final FEATURE_CLOSE:I = 0x0

.field public static final FEATURE_RESET:I = 0x1

.field public static final HEAD_SHRINK:I = 0x4

.field public static final LEG_LENGTHEN:I = 0x9

.field public static final LEG_SLIM:I = 0x8

.field public static final SHOULDER_SLIM:I = 0x5

.field public static final WAIST_SLIM:I = 0x6

.field public static final WAIST_UPPER:I = 0xd


# instance fields
.field public drawableId:I

.field public featureId:I

.field public layoutId:I

.field public titleId:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->layoutId:I

    .line 36
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->titleId:I

    .line 37
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->drawableId:I

    .line 38
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->value:Ljava/lang/String;

    return-void
.end method
