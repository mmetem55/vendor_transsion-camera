.class public Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;
.super Ljava/lang/Object;
.source "SBPresetInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PRESET_AI:I = 0x1

.field public static final PRESET_CLOSE:I = 0x0

.field public static final PRESET_CUSTOM:I = 0x5

.field public static final PRESET_FAKE:I = -0x1

.field public static final PRESET_NOT_PROCESS:I = 0x6

.field public static final PRESET_RESET:I = 0x4

.field public static final PRESET_SEXY:I = 0x2

.field public static final PRESET_STANDARD:I = 0x3


# instance fields
.field public drawableId:I

.field public layoutId:I

.field public presetMode:I

.field public titleId:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    .line 31
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->layoutId:I

    .line 32
    iput p3, p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->titleId:I

    .line 33
    iput p4, p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->drawableId:I

    .line 34
    iput-object p5, p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->value:Ljava/lang/String;

    return-void
.end method
