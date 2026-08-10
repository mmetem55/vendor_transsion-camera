.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    .line 1195
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 1196
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4400(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGACallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 1199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 1200
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[playSvgaAnimation] startAnimation "

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 1206
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$4500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "load or parse svga resource error."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
