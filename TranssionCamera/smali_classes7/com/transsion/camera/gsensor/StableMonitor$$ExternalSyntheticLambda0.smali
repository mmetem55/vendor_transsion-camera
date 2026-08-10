.class public final synthetic Lcom/transsion/camera/gsensor/StableMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Lcom/transsion/camera/gsensor/GyroData;

    invoke-virtual {p1}, Lcom/transsion/camera/gsensor/GyroData;->getGyroXAbsValue()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method
