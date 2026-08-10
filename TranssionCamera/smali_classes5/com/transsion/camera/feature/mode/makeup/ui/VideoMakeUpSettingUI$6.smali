.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;
.super Ljava/lang/Object;
.source "VideoMakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;


# direct methods
.method public static synthetic $r8$lambda$6D6I7Z51rGOvVD795nb9wRboeko(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->lambda$onStatusChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Ljava/lang/String;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateValueChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 343
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_video_makeup_style"

    .line 344
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
