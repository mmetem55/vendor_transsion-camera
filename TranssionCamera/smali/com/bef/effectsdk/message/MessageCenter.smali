.class public Lcom/bef/effectsdk/message/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/message/MessageCenter$MessageHandler;,
        Lcom/bef/effectsdk/message/MessageCenter$Listener;
    }
.end annotation


# static fields
.field public static final BEF_MSG_TYPE_RECORD_VIDEO:I = 0x48

.field public static final MSG_CLIENT_TO_SDK_CHALLENGE_GAME:I = 0x1007

.field public static final MSG_CLIENT_TO_SDK_PUASE_GAME:I = 0x1004

.field public static final MSG_CLIENT_TO_SDK_RESTART_GAME:I = 0x1006

.field public static final MSG_CLIENT_TO_SDK_RESUME_GAME:I = 0x1005

.field public static final MSG_CLIENT_TO_SDK_START_GAME:I = 0x1001

.field public static final MSG_CLINET_TO_SDK_FINISH_GAME:I = 0x1002

.field public static final MSG_ERROR_TYPE_CONFIG:I = 0x1001

.field public static final MSG_EVENT_2D_ANIMATION_CYCLE_FINISH:I = 0x5

.field public static final MSG_EVENT_ALGORITHM_CHANGE_FACE_COUNT:I = 0x1

.field public static final MSG_EVENT_AUDIO_FILE_WRITTEN:I = 0x2

.field public static final MSG_EVENT_AUDIO_INIT:I = 0x1

.field public static final MSG_EVENT_AUDIO_RECORD_FILEPATH:I = 0x2

.field public static final MSG_EVENT_AUDIO_RECORD_START:I = 0x0

.field public static final MSG_EVENT_AUDIO_RECORD_STOP:I = 0x1

.field public static final MSG_EVENT_BODY_DANCE_CATEGORY_ADJUST:I = 0x1

.field public static final MSG_EVENT_BODY_DANCE_CATEGORY_SCORE:I = 0x2

.field public static final MSG_EVENT_CAMERA_SWITCH:I = 0x3

.field public static final MSG_EVENT_CAMERA_TO_BACK:I = 0x2

.field public static final MSG_EVENT_CAMERA_TO_FRONT:I = 0x1

.field public static final MSG_EVENT_ENIGMA_COMPLETE:I = 0x1

.field public static final MSG_EVENT_EXIT_GAME:I = 0x0

.field public static final MSG_EVENT_GAME_END:I = 0x3

.field public static final MSG_EVENT_GAME_READY:I = 0x2

.field public static final MSG_EVENT_LOAD_FAIL:I = 0x4

.field public static final MSG_EVENT_LOAD_INIT:I = 0x1

.field public static final MSG_EVENT_LOAD_LOADING:I = 0x2

.field public static final MSG_EVENT_LOAD_SUCCESS:I = 0x3

.field public static final MSG_EVENT_PLAY_GAME_BGM:I = 0x1

.field public static final MSG_EVENT_RECORD_CLIP_KEY:I = 0x2

.field public static final MSG_EVENT_REPLAY_GAME:I = 0x1

.field public static final MSG_EVENT_STOP_GAME_BGM:I = 0x0

.field public static final MSG_ID_BEGIN:I = 0x10

.field public static final MSG_SDK_TO_CLIENT_END_GAME_REQ:I = 0x1003

.field public static final MSG_SDK_TO_CLIENT_GAME_RESOURCE_LOADED:I = 0x1008

.field public static final MSG_TYPE_2D_ANIMATION_CYCLE:I = 0x12

.field public static final MSG_TYPE_ALGORITHM_CHANGE:I = 0x17

.field public static final MSG_TYPE_APP_STATUS:I = 0x16

.field public static final MSG_TYPE_ARSCAN_STICKER:I = 0x35

.field public static final MSG_TYPE_AUDIO_PLAYER:I = 0x15

.field public static final MSG_TYPE_AUDIO_RECORD:I = 0x2b

.field public static final MSG_TYPE_BODY_DANCE:I = 0x13

.field public static final MSG_TYPE_CLIENT_INTERACTION:I = 0x29

.field public static final MSG_TYPE_EFFECT:I = 0x14

.field public static final MSG_TYPE_FACE_ATTRIBUTIONS:I = 0x22

.field public static final MSG_TYPE_FACE_VERIFY:I = 0x23

.field public static final MSG_TYPE_GAME_DATA:I = 0x2a

.field public static final MSG_TYPE_GAME_MUSIC_END:I = 0x2c

.field public static final MSG_TYPE_GAME_MUSIC_REQ:I = 0x2f

.field public static final MSG_TYPE_GAME_NTF:I = 0x2e

.field public static final MSG_TYPE_GAME_REQ:I = 0x2d

.field public static final MSG_TYPE_GENERAL_AUDIO:I = 0x3a

.field public static final MSG_TYPE_HIDEINPUTMETHOD:I = 0x21

.field public static final MSG_TYPE_LIVE_ACTIVITY_INFO:I = 0x38

.field public static final MSG_TYPE_LIVE_GIFT_NOTIFY:I = 0x39

.field public static final MSG_TYPE_LIVE_INTERACTION:I = 0x28

.field public static final MSG_TYPE_LIVE_MAGIC_GESTURE_INFO:I = 0x37

.field public static final MSG_TYPE_LIVE_OGC_INFO:I = 0x40

.field public static final MSG_TYPE_M10N_INFO:I = 0x42

.field public static final MSG_TYPE_RESOURCE:I = 0x11

.field public static final MSG_TYPE_SHOWINPUTMETHOD:I = 0x20

.field public static final MSG_TYPE_START_RECORD:I = 0x30

.field public static final MSG_TYPE_STICKER_ASK_LOAD_CNT:I = 0x33

.field public static final MSG_TYPE_STICKER_LOAD_CNT:I = 0x32

.field public static final MSG_TYPE_STOP_RECORD:I = 0x31

.field public static final MSG_TYPE_SWITCH_CAMERA_POSITION:I = 0x47

.field public static final MSG_TYPE_SWITCH_TO_AR_MODE:I = 0x50

.field public static final MSG_TYPE_TYPE_ENIGMA:I = 0x18

.field public static final MSG_TYPE_VE_AUDIO:I = 0x3b

.field public static final MSG_TYPE_VRBRUSH_STICKER:I = 0x36

.field private static final TAG:Ljava/lang/String; = "MessageCenter"

.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bef/effectsdk/message/MessageCenter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static sMessageCenterThread:Landroid/os/HandlerThread;

.field private static final sMessageCenterThreadLock:Ljava/lang/Object;

.field private static sMessageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThreadLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;)V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 2

    .line 134
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lcom/bef/effectsdk/message/MessageCenter;->init()V

    .line 137
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static destroy()V
    .locals 4

    .line 173
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    monitor-exit v0

    return-void

    .line 177
    :cond_0
    sget-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThreadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    sget-object v2, Lcom/bef/effectsdk/message/MessageCenter;->sMessageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    sput-object v3, Lcom/bef/effectsdk/message/MessageCenter;->sMessageHandler:Landroid/os/Handler;

    .line 183
    :cond_1
    sget-object v2, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 185
    sput-object v3, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    .line 187
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 187
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 190
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 204
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/message/MessageCenter$Listener;

    .line 206
    iget v3, p0, Landroid/os/Message;->what:I

    iget v4, p0, Landroid/os/Message;->arg1:I

    iget v5, p0, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init()V
    .locals 3

    .line 161
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MessageCenter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    .line 164
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v1, Lcom/bef/effectsdk/message/MessageCenter$MessageHandler;

    sget-object v2, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bef/effectsdk/message/MessageCenter$MessageHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageHandler:Landroid/os/Handler;

    .line 168
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static postMessage(IIILjava/lang/String;)V
    .locals 2

    .line 195
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sMessageCenterThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/bef/effectsdk/message/MessageCenter;->sMessageHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 197
    monitor-exit v0

    return-void

    .line 198
    :cond_0
    invoke-static {v1, p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeAllListener()V
    .locals 2

    .line 151
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    invoke-static {}, Lcom/bef/effectsdk/message/MessageCenter;->destroy()V

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 145
    invoke-static {}, Lcom/bef/effectsdk/message/MessageCenter;->destroy()V

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/bef/effectsdk/message/MessageCenter;->sListeners:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
