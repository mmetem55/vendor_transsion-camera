.class Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;
.super Ljava/lang/Object;
.source "TemplateUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayingStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V
    .locals 0

    .line 903
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$1900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$1900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 908
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    .line 907
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_1
    return-void
.end method
