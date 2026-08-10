.class Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeTypePhoto"
.end annotation


# instance fields
.field private final DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewStyle;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V
    .locals 2

    .line 385
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    const-string v0, "mode_type_photo"

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V

    return-void
.end method


# virtual methods
.method defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method
