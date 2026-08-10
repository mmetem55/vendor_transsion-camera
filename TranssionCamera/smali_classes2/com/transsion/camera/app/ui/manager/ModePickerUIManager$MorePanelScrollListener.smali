.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MorePanelScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public onMorePanelScroll()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->scrollToPrevious()V

    :cond_0
    return-void
.end method
