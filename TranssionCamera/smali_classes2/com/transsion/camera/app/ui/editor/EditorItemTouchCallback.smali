.class public Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "EditorItemTouchCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditorItemTouchCallback"


# instance fields
.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mModesNumberInTab:I

.field mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

.field private mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x6

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mModesNumberInTab:I

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 46
    iput-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 47
    iput-object p4, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 125
    sget-object v0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->TAG:Ljava/lang/String;

    const-string v1, "clear view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;->getMotionState()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    .line 128
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;->getMotionState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto/16 :goto_8

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "frontarcoreposition"

    const-string v5, "backarcoreposition"

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ARCorePosition "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    move v6, v2

    .line 140
    :goto_2
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ","

    if-ge v2, v7, :cond_9

    .line 141
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v7

    add-int/2addr v7, p2

    const-string v9, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    if-ne v2, v7, :cond_3

    if-eqz v6, :cond_3

    .line 142
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v7, 0x1

    if-ne v1, v2, :cond_5

    .line 145
    iget-object v10, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 146
    iget-object v10, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v10}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v10

    add-int/2addr v10, v7

    if-ge v2, v10, :cond_4

    iget-object v10, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 147
    invoke-virtual {v10}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v11}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v10}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v6, v7

    goto :goto_3

    .line 150
    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 155
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v7, v7, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v7, v7, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 158
    :cond_6
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4, v9, v10, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 156
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v9, v10, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    :cond_8
    :goto_5
    iget-object v7, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 164
    :cond_9
    sget-object p2, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderedModeNames add arcore after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    .line 171
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frontmodesstring"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 173
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frontmainmodescount"

    .line 172
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    .line 167
    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "backmodesstring"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 169
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "backmainmodescount"

    .line 168
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMainModeCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orderedModeNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getFinalOrder()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 178
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 177
    invoke-interface {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 52
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 53
    invoke-static {p2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p0, :cond_1

    const/16 p0, 0xf

    .line 59
    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x3

    .line 63
    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 189
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    .line 184
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    .line 201
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    .line 202
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move v5, v2

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 206
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p5

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    .line 208
    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 70
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 71
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 72
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result p2

    if-le v0, p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    :cond_0
    const/4 p2, 0x1

    if-ge v0, p2, :cond_1

    return p2

    :cond_1
    const/4 v2, 0x6

    const/4 v3, 0x7

    if-le p1, v3, :cond_2

    .line 78
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v2, :cond_2

    return p2

    :cond_2
    if-ne v0, v3, :cond_3

    .line 81
    instance-of p3, p3, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;

    if-eqz p3, :cond_3

    if-le p1, v3, :cond_3

    return p2

    .line 85
    :cond_3
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-le p1, v3, :cond_4

    if-ge v0, v3, :cond_4

    .line 88
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    const/16 v1, 0x8

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->isTitle()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 89
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-le p1, v3, :cond_4

    if-ge v0, v2, :cond_4

    .line 90
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    const-string v3, "AI CAM"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 91
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, v2, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 94
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return p2
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 111
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 113
    iget-object v3, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 114
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    .line 120
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 101
    sget-object p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->TAG:Ljava/lang/String;

    const-string p1, "onSwiped: "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
