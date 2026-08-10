.class Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThrottleChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 903
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onThermalThrottleChanged(I)V
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doOnThermalThrottleChanged(I)V

    return-void
.end method
