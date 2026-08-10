.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;
.super Ljava/lang/Object;
.source "WideSelfieMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mWideSelfieUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->notifyCameraOperateAction(I)V

    return-void
.end method
