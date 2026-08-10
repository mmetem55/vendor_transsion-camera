.class Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;
.super Ljava/lang/Object;
.source "SettingTopLayout.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_0
    return-void
.end method
