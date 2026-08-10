.class Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeTypeVideo"
.end annotation


# instance fields
.field private final DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewStyle;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V
    .locals 2

    .line 401
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    const-string v0, "mode_type_video"

    const/4 v1, 0x0

    .line 402
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V

    return-void
.end method


# virtual methods
.method defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method
