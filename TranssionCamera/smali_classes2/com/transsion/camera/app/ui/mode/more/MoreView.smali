.class public Lcom/transsion/camera/app/ui/mode/more/MoreView;
.super Landroid/widget/RelativeLayout;
.source "MoreView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAddItemToLast:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBottomViewDownY:F

.field private mChangedRecyclerView:Z

.field private mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDragEnterPlaceHolder:Z

.field private mDragFromGridView:Z

.field private mDragFromPlaceHolderToOtherArea:Z

.field private mDragSuccess:Z

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mDropFinished:Z

.field private mEnable:Z

.field private mGridItemDisplayType:I

.field private mGridListGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mHoverBottomHeightReduce:I

.field private mIsEditMode:Z

.field private mLastGridItemPosition:I

.field private mLastItemPos:I

.field private mLastLinearItemPosition:I

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private final mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

.field private mMoreBottomView:Landroid/view/View;

.field private mMoreContainerImg:Landroid/widget/ImageView;

.field private mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

.field private mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

.field private mMoreGridListLayout:Landroid/widget/RelativeLayout;

.field private mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

.field private mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

.field private mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

.field private mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

.field private final mMoreModeTabItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

.field private mMoreTopHelpText:Landroid/widget/TextView;

.field private mMoreTopView:Landroid/view/View;

.field private mMoreViewShow:Z

.field private mNoModeInGridList:Landroid/widget/RelativeLayout;

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mSellingPointArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private final mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

.field private mViewEnable:Z


# direct methods
.method public static synthetic $r8$lambda$2g1A8rPaX8DJCOmFVa9PFrE4nvU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$initializeTouchListener$6(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2m51qlIOTkNaw9FcWunSA0c2BzE(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$showViewWithAnimation$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4kcqJGtSJ3hRId44lFrhG6LGJ3Y(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$3(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWcK79PgfeL8PfR0BgYS291Pz4w(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$setModeList$12(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ko2HrPWUcjig9nAyaY9jf7OBmLY(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$initializeTouchListener$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Kq4O9M5ginJIXaJcCQuPu4Z3amo(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$11(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KwuJIOg2tgA2BcRl2Zj3NUxTwCU(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$onNotListEmpty$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$NkogER0r5-Kwu7qhcOtoCnPxP04(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$hideViewWithAnimation$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qfz7iDru0gaBIOPeRTMae2SxnS4(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$onScreenFormChanged$13(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$REB4785cdRavi_qfZDF4Y6Xs4wc(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$1(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWmObv9e9k77W_iBlZnKv1GEubA(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$phheDd_WozHVO1RyLkCnYqn3obM(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$4(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vupUwH3adrk3u7jotO6X6JjTSvQ(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$10(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpFRGH1h6BrE_0AdVjO9FrTpUNs(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$5(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 152
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .locals 5

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 165
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 166
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 167
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    .line 168
    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$MoreHandler;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030023

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703ca

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverBottomHeightReduce:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverBottomHeightReduce:I

    return p0
.end method

.method static synthetic access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 84
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startVibrator()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->checkMoreDragBoxMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeGridToLinear()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/View;)I
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getCenterPosX(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F
    .locals 0

    .line 84
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownY:F

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)F
    .locals 0

    .line 84
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownY:F

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->backToPreviousMode(I)Z

    move-result p0

    return p0
.end method

.method private backToPreviousMode(I)Z
    .locals 3

    .line 1397
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToPreviousMode, mModeNameBeforeSwitchMoreMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1398
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-eqz v0, :cond_2

    .line 1399
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1403
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, "click_back_key"

    goto :goto_0

    :cond_1
    const-string p1, "click_bottom_area"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    .line 1404
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private changeGridToLinear()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragFromGridToTab(Z)V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    .line 391
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 392
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 394
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeGridToLinear()V

    return-void
.end method

.method private checkMoreDragBoxMode()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragFromGridToTab(Z)V

    .line 400
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 401
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setGridMode()V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 405
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 406
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->addItemToLast(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragEnterFinish(I)V

    goto :goto_1

    .line 414
    :cond_3
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 415
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 418
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    .line 419
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeLinearToGrid()V

    :cond_5
    return-void
.end method

.method private findAbovePosition(I)Landroid/graphics/Point;
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    rem-int/2addr p1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 479
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v2, p1

    .line 481
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0703d6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 483
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private findBelowPosition(I)Landroid/graphics/Point;
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    sub-int/2addr v2, v0

    rem-int/2addr p1, v0

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    .line 491
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v2, p1

    .line 492
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0703d6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 494
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private getCenterPosX(Landroid/view/View;)I
    .locals 1

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getDragBoxHeight(Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)I
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0703e6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method private getGridItemViewDropTranslatePoint(Landroid/view/View;)Landroid/graphics/Point;
    .locals 7

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 522
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    if-nez p1, :cond_0

    return-object v0

    .line 528
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 529
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    .line 530
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v5, [I

    .line 535
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 536
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aget v2, v2, v4

    .line 537
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->getSwapItemToY()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v5

    add-int/2addr v2, p1

    goto :goto_1

    .line 531
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 532
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    goto :goto_1

    .line 540
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 541
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 542
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    :goto_1
    new-array p1, v5, [I

    .line 545
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v6, p1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    aget v1, p1, v1

    sub-int/2addr v3, v1

    .line 546
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Point;->x:I

    aget p1, p1, v4

    sub-int/2addr v2, p1

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    div-int/2addr p0, v5

    sub-int/2addr v2, p0

    iput v2, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getGridModeViewDropPosition(I)Landroid/graphics/Point;
    .locals 3

    .line 507
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    return-object v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    .line 512
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    .line 513
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 514
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 513
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    .line 514
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 515
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->findAbovePosition(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    .line 517
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->findBelowPosition(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private getInsideLocation(Landroidx/recyclerview/widget/RecyclerView;FF)[F
    .locals 3

    const/4 p0, 0x2

    new-array v0, p0, [F

    new-array p0, p0, [I

    .line 711
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v0, v1

    const/4 p2, 0x1

    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v0, p2

    .line 715
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    .line 716
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    aget p1, v0, p2

    int-to-float p0, p0

    .line 717
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, p2

    return-object v0
.end method

.method private getParentPosX()I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    return p0
.end method

.method private getParentPosY()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 577
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    aget p0, v0, v2

    return p0

    .line 581
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    aget p0, v0, v2

    return p0
.end method

.method private getPositionByChildView(Landroid/view/View;)I
    .locals 0

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 701
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private getTargetItemPos(Landroid/view/View;)I
    .locals 1

    .line 644
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getPositionByChildView(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    .line 648
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    if-eq p1, p0, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method private handleDragLocationAction(Landroid/view/DragEvent;Landroid/view/View;)V
    .locals 4

    .line 586
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStarted(Z)V

    .line 589
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->swapItemPositionIfNecessary(Landroid/view/DragEvent;)V

    .line 590
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0703ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 591
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0703e6

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 592
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 593
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 594
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 595
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2, p1, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getScrollPositionInLinearMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 597
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 598
    iget v2, p2, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    iget v0, p2, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_a

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x2

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 604
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 605
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 606
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getScrollPositionInGridMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 608
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v0, :cond_7

    if-eqz v1, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 609
    iget v2, p2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    iget v0, p2, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_a

    .line 612
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 615
    :cond_a
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->updateDragEvent(Landroid/view/DragEvent;)V

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->translateDragBoxForDragLocationAction(FF)V

    return-void
.end method

.method private handleDragStartedAction(Landroid/view/DragEvent;Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)V
    .locals 5

    .line 723
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startVibrator()V

    .line 724
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->makeDragBox()V

    .line 725
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f733333    # 0.95f

    const/16 v3, 0x12c

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 726
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    .line 732
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setDragDropBoxViewType(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragStarted(Landroid/view/DragEvent;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 736
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 737
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    goto :goto_1

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 742
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewPosition(FF)V

    .line 743
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 744
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getDragBoxHeight(Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)I

    move-result v2

    .line 745
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewSize(II)V

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getParentPosX()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getParentPosY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewParentPosition(II)V

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewParentSize(II)V

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->initialize()V

    const/4 v0, 0x4

    .line 753
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 754
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getViewX()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getViewY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startDragBoxStartAnimation(FF)V

    return-void
.end method

.method private handleDropAction(Landroid/view/DragEvent;)V
    .locals 5

    .line 793
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragStop()V

    .line 794
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 795
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 796
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0703db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 798
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 799
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 800
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    .line 801
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 802
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDropActionInLinearMode(Landroid/view/DragEvent;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 803
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    if-eqz p1, :cond_2

    .line 804
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    goto :goto_0

    .line 807
    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleGridModeDropAction(IILcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 809
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStop()V

    return-void
.end method

.method private handleDropActionInLinearMode(Landroid/view/DragEvent;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getMotionEventGetX(IILandroid/view/DragEvent;)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;F)V

    :cond_0
    const/4 p1, 0x0

    .line 817
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 818
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startDragAreaGroupLinearModeAnimation(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method private handleGridModeDropAction(IILcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 12

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->findItemView(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1, p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 824
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridItemViewDropTranslatePoint(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 825
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const v3, -0xd7a7a7b

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f733333    # 0.95f

    const-wide/16 v8, 0x15e

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    if-ne v2, v11, :cond_1

    .line 826
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const v11, 0x1fffffff

    invoke-virtual {v2, v8, v9, v3, v11}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeColor(JII)V

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridModeViewDropPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v5, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 830
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 831
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 832
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 838
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    .line 839
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v5, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 840
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 841
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    .line 842
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 845
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 849
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridModeViewDropPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v5, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 855
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 856
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 857
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 863
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2, v10, v7}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    .line 864
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const p2, 0x8ffffff

    invoke-virtual {p1, v8, v9, v3, p2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeColor(JII)V

    .line 865
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    .line 866
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v5, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 867
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 868
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 869
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 873
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private hideViewWithAnimation(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1218
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1221
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 1222
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 1223
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x96

    .line 1224
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1225
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;)V

    .line 1226
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1229
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initializeGridListView()V
    .locals 8

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 950
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-eqz v4, :cond_1

    .line 951
    invoke-virtual {v4, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setListEmptyListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;)V

    .line 952
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v4, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setOnDataChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;)V

    .line 954
    :cond_1
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 955
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    .line 956
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 957
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setAddItemCallback(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;)V

    .line 958
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v6, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    invoke-direct {v0, v4, v5, v6}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    .line 959
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEnable(Z)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setAdapter(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    .line 964
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v4, v3, :cond_2

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 967
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v4, v2

    .line 968
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 969
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/2addr v5, v2

    .line 966
    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 971
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_3

    .line 972
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 973
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    goto :goto_1

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 977
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 978
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 980
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez p0, :cond_4

    const-string p0, "grid"

    goto :goto_3

    :cond_4
    const-string p0, "linear"

    :goto_3
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    return-void
.end method

.method private initializeLinearListView()V
    .locals 2

    .line 933
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    const/4 v1, 0x1

    .line 934
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setDragEnterFinishCallback(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;)V

    .line 936
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setScreenSize(Landroid/util/Size;)V

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->isSupportPMaster()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setSupportPMasterMode(Z)V

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setAdapter(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method private initializeMoreBottomView()V
    .locals 4

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginModePlusBottomBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1157
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginTopBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1158
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1161
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initializeTouchListener()V
    .locals 3

    .line 984
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView$GridAreaDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView$LinearViewDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setOnDragStateListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;)V

    .line 991
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initializeView()V
    .locals 3

    .line 899
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeGridListView()V

    .line 900
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeLinearListView()V

    .line 901
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeMoreBottomView()V

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 907
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private isSupportPMaster()Z
    .locals 2

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p0

    .line 298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    .line 299
    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleGridModeDropAction$1(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 834
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScaleX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->scaleX(F)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$3(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 848
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$4(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 859
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 860
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$5(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 871
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 872
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$hideViewWithAnimation$9(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 1227
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$initializeTouchListener$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initializeTouchListener$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onNotListEmpty$0()V
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onScreenFormChanged$13(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1443
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1444
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setModeList$12(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 3

    .line 1315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1316
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 1315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$showViewWithAnimation$8(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1211
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$10(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1242
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$11(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 1237
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private makeDragBox()V
    .locals 2

    .line 1184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxFactory;->makeMoreDragBox(Landroid/content/Context;I)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/4 p0, 0x0

    .line 1185
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    return-void
.end method

.method private onDragStarted(Landroid/view/DragEvent;)V
    .locals 2

    .line 759
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDragStartEvent(Landroid/view/DragEvent;)V

    .line 761
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    if-nez p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStarted(Z)V

    .line 764
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 765
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeEditMode()V

    .line 768
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_2

    .line 769
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    return-void
.end method

.method private onDragStop()V
    .locals 3

    .line 774
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    .line 776
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    .line 777
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    const/4 v1, -0x1

    .line 778
    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    .line 779
    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    .line 780
    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    const/4 v1, 0x0

    .line 781
    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 782
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->onDragStop()V

    .line 783
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 784
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v1, :cond_0

    .line 785
    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 787
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 788
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private saveCurrentModeOrder()Z
    .locals 3

    .line 1167
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    .line 1176
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1174
    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentModes(Ljava/util/List;Ljava/util/List;)V

    .line 1178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentModes(Ljava/util/List;)V

    .line 1179
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeNormalMode()V

    const/4 p0, 0x1

    return p0
.end method

.method private setDragDropBoxViewType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "grid_item_view"

    .line 1189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1190
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setGridMode()V

    const/4 p1, 0x1

    .line 1191
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    const/4 p1, 0x0

    .line 1194
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    :goto_0
    return-void
.end method

.method private setGridViewScrollMode()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    .line 447
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 450
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :goto_0
    return-void
.end method

.method private showOrHideView(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1057
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 1058
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1060
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1200
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1203
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 1204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1206
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    .line 1207
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 1208
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, p0, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1209
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 1210
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1213
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startDragAreaGroupLinearModeAnimation(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 6

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1234
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1235
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1236
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1237
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startDragBoxStartAnimation(FF)V
    .locals 3

    .line 1247
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move p1, v1

    move p2, p1

    .line 1251
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v1, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1252
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    .line 1253
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1254
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startGridLinearSwitchAnimation()V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 313
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 314
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 316
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xfa

    .line 325
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startVibrator()V
    .locals 3

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 1145
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 1147
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private swapItemPositionIfNecessary(Landroid/view/DragEvent;)V
    .locals 19

    move-object/from16 v0, p0

    .line 655
    sget-object v1, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "swapItemPositionIfNecessary"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 657
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    goto :goto_0

    .line 660
    :cond_0
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    .line 662
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getInsideLocation(Landroidx/recyclerview/widget/RecyclerView;FF)[F

    move-result-object v3

    const/4 v4, 0x0

    .line 663
    aget v10, v3, v4

    const/4 v4, 0x1

    .line 664
    aget v3, v3, v4

    .line 665
    invoke-virtual {v2, v10, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v15

    .line 666
    invoke-direct {v0, v15}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getTargetItemPos(Landroid/view/View;)I

    move-result v2

    if-nez v15, :cond_1

    return-void

    .line 670
    :cond_1
    move-object v4, v15

    check-cast v4, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v4

    .line 671
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    .line 674
    :cond_2
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v5, v4, v6}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragEnterFixModeArea(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 675
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    if-eqz v4, :cond_3

    return-void

    .line 678
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastItemPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 679
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    .line 680
    iget v14, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v14, :cond_4

    .line 681
    iget-object v11, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v0, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move-object/from16 v13, p1

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/DragEvent;ILandroid/view/View;IIF)I

    goto :goto_1

    .line 683
    :cond_4
    iget-object v11, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move-object/from16 v13, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/DragEvent;ILandroid/view/View;IIF)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 685
    iput v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    goto :goto_1

    .line 689
    :cond_5
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v8, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move-object v7, v15

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/View;IIF)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 691
    iput v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public changeDisplayType()V
    .locals 9

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startGridLinearSwitchAnimation()V

    .line 261
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0703d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 263
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v0, v0, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 265
    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 268
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    mul-int/2addr v6, v2

    .line 269
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 270
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    mul-int/2addr v7, v2

    .line 267
    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 272
    iput v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez p0, :cond_2

    const-string p0, "grid"

    goto :goto_1

    :cond_2
    const-string p0, "linear"

    :goto_1
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public changeEditMode()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeEditMode()V

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public changeNormalMode()V
    .locals 3

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeNormalMode()V

    .line 212
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 217
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-nez v0, :cond_0

    .line 219
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    .line 224
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 226
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 227
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifyDropState(Z)V

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDragStartedAction(Landroid/view/DragEvent;Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDragLocationAction(Landroid/view/DragEvent;Landroid/view/View;)V

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->checkMoreDragBoxMode()V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeGridToLinear()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 243
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifyDropState(Z)V

    .line 245
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDropAction(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 247
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    if-nez v0, :cond_5

    .line 248
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifyDropState(Z)V

    .line 250
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDropAction(Landroid/view/DragEvent;)V

    .line 253
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 625
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 627
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2

    .line 630
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 634
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hideMoreView()V
    .locals 1

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    .line 1291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 1295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 880
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0c0106

    const/4 v1, 0x1

    .line 881
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0902c9

    .line 882
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const p1, 0x7f0902d3

    .line 883
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const p1, 0x7f0902db

    .line 884
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    const p1, 0x7f09031a

    .line 885
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const p1, 0x7f0902cc

    .line 886
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p1, 0x7f0902cb

    .line 887
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p1, 0x7f0902dd

    .line 888
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    const p1, 0x7f0902c7

    .line 889
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const p1, 0x7f0902c8

    .line 890
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0902c1

    .line 891
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    const p1, 0x7f0902cd

    .line 892
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    .line 893
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeView()V

    .line 894
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeTouchListener()V

    return-object p2
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1386
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1390
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->backToPreviousMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1393
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->saveCurrentModeOrder()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cc

    if-ne p1, v0, :cond_0

    .line 340
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeEditMode()V

    goto :goto_1

    :cond_0
    const v0, 0x7f0902cb

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x1f4

    .line 345
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeDisplayType()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const v0, 0x7f0902db

    if-ne p1, v0, :cond_4

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->saveCurrentModeOrder()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onDragEnterFinish(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1066
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 1067
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    return-void
.end method

.method public onDragStateChanged(ZZ)V
    .locals 0

    .line 1011
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    .line 1012
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    return-void
.end method

.method public onGridViewDataChanged()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1302
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onListEmpty()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x32

    .line 363
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x96

    .line 364
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 365
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotListEmpty()V
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 376
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 1413
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 1416
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_1

    .line 1417
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 4

    .line 1423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-nez v0, :cond_0

    return-void

    .line 1427
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    .line 1428
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1429
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 1433
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0703dd

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1438
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v1, p2, v3

    const/4 v1, 0x1

    aput p1, p2, v1

    .line 1439
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 1440
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1441
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/mode/more/MoreView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1442
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1448
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1039
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 1040
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    return-void
.end method

.method public refreshModePanelView()V
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->updateSecureCamera(Z)V

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->updateModeData(Ljava/util/List;)V

    .line 1334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onListEmpty()V

    goto :goto_0

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onNotListEmpty()V

    .line 1341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1342
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->updateModeData(Ljava/util/List;)V

    .line 1343
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public resetDragAndDropState()V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->cancelDragAndDrop()V

    .line 1047
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    if-eqz p0, :cond_1

    .line 1048
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->cancelDragAndDrop()V

    :cond_1
    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 3

    .line 1016
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMoreModeToNormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1017
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1020
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 1021
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    .line 1022
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1023
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1024
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1025
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1026
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1027
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1031
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1032
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1033
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeNormalMode()V

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreView()V
    .locals 4

    .line 997
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_0

    return-void

    .line 1000
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1001
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1002
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    .line 1004
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 1005
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 1006
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string v0, "grid"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 1259
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    .line 1260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1266
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz p0, :cond_2

    .line 1267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1312
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object p1

    .line 1313
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p2

    .line 1315
    new-instance p3, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-interface {p1, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1319
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1320
    iget-object p3, p2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    iget-object v2, p2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->refreshModePanelView()V

    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    return-void
.end method

.method public setMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    return-void
.end method

.method public setupViews()V
    .locals 0

    .line 1273
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->refreshModePanelView()V

    return-void
.end method

.method public showMoreView()V
    .locals 1

    const/4 v0, 0x1

    .line 1278
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    const/4 v0, 0x0

    .line 1279
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    .line 1280
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public switchImageType()V
    .locals 1

    .line 289
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f080724

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f080727

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public switchItemType()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-eq v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeDisplayType()V

    :cond_0
    return-void
.end method

.method public updateAddItemLast(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 426
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 1379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz p0, :cond_0

    .line 1380
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
