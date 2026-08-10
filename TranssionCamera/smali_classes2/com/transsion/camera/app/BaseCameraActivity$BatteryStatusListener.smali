.class Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1321
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2300(Lcom/transsion/camera/app/BaseCameraActivity;ZII)V

    return-void
.end method
