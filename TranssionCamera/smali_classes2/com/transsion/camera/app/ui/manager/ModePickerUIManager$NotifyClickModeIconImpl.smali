.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyClickModeIconImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public notifyClickModeIcon()V
    .locals 1

    .line 870
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z

    return-void
.end method
