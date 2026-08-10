.class public abstract Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.super Ljava/lang/Object;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BaseStyle"
.end annotation


# instance fields
.field protected final mStyle:Ljava/lang/String;

.field final synthetic this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object p0

    return-object p0
.end method

.method private style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    const-string v0, "width_full_style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 271
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    :goto_0
    return-object p0
.end method


# virtual methods
.method changeStyle()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1200(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    :goto_0
    return-void
.end method

.method final entry(Z)V
    .locals 3

    .line 248
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview style change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1200(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$202(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1300(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1300(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;->onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1200(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onLeave()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$202(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1300(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1300(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;->onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    .line 264
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onEntry(Z)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->access$1202(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$1400(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method

.method protected onLeave()V
    .locals 0

    return-void
.end method

.method abstract sizeChanged()V
.end method
