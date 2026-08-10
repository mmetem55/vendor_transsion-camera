.class Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "LevelUI.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/level/LevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 133
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->access$000(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->access$100(Lcom/transsion/camera/ui/setting/level/LevelUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;->this$0:Lcom/transsion/camera/ui/setting/level/LevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->access$000(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->onSensorChanged([F)V

    :cond_0
    return-void
.end method
