.class public final Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;
.super Ljava/lang/Object;
.source "TrackingStateHelper.java"


# static fields
.field private static final BAD_STATE_MESSAGE:Ljava/lang/String; = "Tracking lost due to bad internal state. Please try restarting the AR experience."

.field private static final CAMERA_UNAVAILABLE_MESSAGE:Ljava/lang/String; = "Another app is using the camera. Tap on this app or try closing the other one."

.field private static final EXCESSIVE_MOTION_MESSAGE:Ljava/lang/String; = "Moving too fast. Slow down."

.field private static final INSUFFICIENT_FEATURES_MESSAGE:Ljava/lang/String; = "Can\'t find anything. Aim device at a surface with more texture or color."

.field private static final INSUFFICIENT_LIGHT_MESSAGE:Ljava/lang/String; = "Too dark. Try moving to a well-lit area."


# instance fields
.field private final activity:Landroid/app/Activity;

.field private previousTrackingState:Lcom/google/ar/core/TrackingState;


# direct methods
.method public static synthetic $r8$lambda$Qnybhv7jAhgy0b2HAdTGRw9gDoo(Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->lambda$updateKeepScreenOnFlag$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_aT0CU159F69iUrCfLyde6ChqFE(Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->lambda$updateKeepScreenOnFlag$1()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->activity:Landroid/app/Activity;

    return-void
.end method

.method private synthetic lambda$updateKeepScreenOnFlag$0()V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private synthetic lambda$updateKeepScreenOnFlag$1()V
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method


# virtual methods
.method public updateKeepScreenOnFlag(Lcom/google/ar/core/TrackingState;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->previousTrackingState:Lcom/google/ar/core/TrackingState;

    if-ne p1, v0, :cond_0

    return-void

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->previousTrackingState:Lcom/google/ar/core/TrackingState;

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper$1;->$SwitchMap$com$google$ar$core$TrackingState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/helpers/TrackingStateHelper;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
