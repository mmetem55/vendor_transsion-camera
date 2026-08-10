.class public Lcom/transsion/camera/app/ui/PreviewStyle;
.super Ljava/lang/Object;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;,
        Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;,
        Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;,
        Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;,
        Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mInit:Z

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mModeTypeListener:Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

.field private final mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private final mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private mPreviewStyle:Ljava/lang/String;

.field private mPreviewStyleListener:Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

.field private mPreviewView:Landroid/view/View;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mVideoModes:[Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 142
    new-instance v2, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 143
    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 147
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 68
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03011b

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mVideoModes:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyleListener:Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/PreviewStyle;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/ScreenManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    return-object p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeListener:Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private isVideoMode(Ljava/lang/String;)Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mVideoModes:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public changeStyle()V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    if-nez p0, :cond_0

    .line 108
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "changeStyle, mCurrentModeType is null!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$100(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method

.method public currentStyle()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 116
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentStyle mCurrentModeType is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentStyle mCurrentStyle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$200(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->access$300(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public setModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeListener:Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInit:Z

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    .line 95
    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    goto :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    if-eq p2, v0, :cond_2

    .line 99
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    .line 100
    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->access$000(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyleListener:Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewView:Landroid/view/View;

    return-void
.end method

.method public switchMode(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->isVideoMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    :goto_0
    return-void
.end method
