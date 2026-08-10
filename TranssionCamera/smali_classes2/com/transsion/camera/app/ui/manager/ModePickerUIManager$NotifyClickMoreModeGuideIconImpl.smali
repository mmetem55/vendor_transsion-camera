.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyClickMoreModeGuideIconImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 860
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public notifyClickGuideIcon()V
    .locals 1

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    return-void
.end method
