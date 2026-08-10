.class public Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
.super Ljava/lang/Object;
.source "PreviewGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;,
        Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

.field private mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewGestureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 34
    new-instance v0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    new-instance v1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$1;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    .line 35
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureNotifier:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureRecognizer:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 40
    sget-object p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerGestureListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 48
    sget-object p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unregisterGestureListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->mGestureListeners:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
