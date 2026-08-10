.class Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;
.super Ljava/lang/Object;
.source "StereoViewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    if-ltz p1, :cond_1

    .line 340
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$900(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$1000(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)V

    return-void

    .line 341
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "position is invalid."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
