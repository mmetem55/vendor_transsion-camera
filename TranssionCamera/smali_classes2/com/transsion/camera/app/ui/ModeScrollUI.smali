.class public Lcom/transsion/camera/app/ui/ModeScrollUI;
.super Ljava/lang/Object;
.source "ModeScrollUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final MAX_TAB_MODE_COUNT:I

.field private mContext:Landroid/content/Context;

.field private mInScrolling:Z

.field private mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollModeIndex:I

.field private mScrollUIVisible:Z

.field private mSelectedModeName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ycV_QvAzD-rbOJ71OGvqngXTfXo(Lcom/transsion/camera/app/ui/ModeScrollUI;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeScrollUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 41
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 43
    invoke-virtual {p4}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->defaultModeCountInTab()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    return-void
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private modeChanged(I)Z
    .locals 0

    .line 168
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private scrollStarted()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStarted()V

    :cond_0
    return-void
.end method

.method private scrollStopped(I)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStopped(I)V

    :cond_0
    return-void
.end method

.method private scrollTo(I)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->slideMode(II)V

    .line 161
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateScrollIndex(I)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private showMode(I)V
    .locals 1

    .line 129
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "scrollUIAnimator showMode"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted()V

    :cond_0
    return-void
.end method

.method private slideMode(II)V
    .locals 0

    .line 137
    sget-object p1, Lcom/transsion/camera/app/ui/ModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator slideMode start"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStarted()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->startVibrator()V

    return-void
.end method

.method private startVibrator()V
    .locals 3

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 240
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private updateScrollIndex(I)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->updateScrollIndex(I)V

    :cond_0
    return-void
.end method

.method private validModeIndex(I)I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private validScrollModeIndex(I)I
    .locals 2

    .line 176
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validModeIndex(I)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canScrollToNext()Z
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    if-le v0, v3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    if-ge v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hide(Z)V
    .locals 0

    .line 74
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    if-eqz p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollUIVisible:Z

    .line 79
    iget p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollStopped(I)V

    :cond_1
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public scrollToNext()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FURTHER_MODE_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrollToPrevious()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrolling(FF)V
    .locals 0

    const/4 p1, 0x0

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->hide(Z)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeScrollUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeScrollUI;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    if-le p1, v0, :cond_0

    .line 60
    new-instance p1, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    const-string v0, "FURTHER_MODE_TAG"

    .line 61
    iput-object v0, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->MAX_TAB_MODE_COUNT:I

    add-int/lit8 p0, p0, -0x1

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    return-void
.end method

.method public showMode(Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->showMode(I)V

    .line 124
    :cond_0
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    .line 125
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateScrollIndex(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mInScrolling:Z

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mScrollModeIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSelectedMode(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    return-void
.end method
