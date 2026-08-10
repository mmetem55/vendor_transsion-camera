.class Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;
.super Ljava/lang/Object;
.source "PreviewGestureManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 153
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 69
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 223
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 97
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(FF)Z
    .locals 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 209
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 167
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 181
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 111
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 139
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 125
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$200(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 83
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
