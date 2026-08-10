.class Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;
.super Ljava/lang/Object;
.source "ShutterUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ShutterUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;Lcom/transsion/camera/app/ui/manager/ShutterUIManager$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)V

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 156
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterCancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onShutterClick(I)V
    .locals 3

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction onShutterClick isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterClick(I)Z

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 189
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_2

    if-eqz v1, :cond_2

    .line 196
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterClick(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    :goto_0
    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 169
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterDown()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onShutterLongClick(I)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 205
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction onShutterLongClick return, isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", curPriority:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterLongClick(I)Z

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 213
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-static {v0}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityByKey(Ljava/lang/String;)I

    move-result v0

    if-le v0, p1, :cond_2

    if-eqz v1, :cond_2

    .line 220
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterLongClick(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    return-void
.end method

.method public onShutterUp(I)V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager$ShutterListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ShutterUIManager;)Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 142
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterUp(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
