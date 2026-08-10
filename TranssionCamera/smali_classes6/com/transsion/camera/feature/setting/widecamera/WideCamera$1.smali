.class Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;
.super Ljava/lang/Object;
.source "WideCamera.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/widecamera/WideCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "need_memory_zoom_value"

    .line 54
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->access$002(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)Z

    :cond_0
    return-void
.end method
