.class public Lcom/transsion/voicecamera/sdk/TransVCamera;
.super Ljava/lang/Object;
.source "TransVCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-TransVCamera"

.field private static final TRANS_VC_SDK_VERSION:Ljava/lang/String; = "0.3.9"

.field private static initialized:Z

.field private static mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

.field private static mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

.field private static final mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

.field private static mContext:Landroid/content/Context;

.field private static mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

.field private static mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

.field private static saveAudioData:Z

.field private static tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/TransVCConfig;-><init>()V

    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 39
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 40
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 41
    sput-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    const-string v0, "vcsdk_jni"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deInit()I
    .locals 4

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    :try_start_0
    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "TransVCamera deInit"

    .line 148
    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    if-nez v1, :cond_0

    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "not initialized, please call init first"

    .line 150
    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    .line 151
    monitor-exit v0

    return v1

    .line 153
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->getInstance()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->deInit()V

    const/4 v1, 0x0

    .line 154
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    .line 158
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->releaseRecorder()V

    .line 160
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 162
    :cond_1
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->deInit()V

    .line 164
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    .line 167
    :cond_2
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->deInit()V

    .line 168
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 170
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->deInit()V

    .line 171
    sput-object v3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 175
    sget-object v2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->reset()V

    .line 176
    sput-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAudioRecordHelper()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
    .locals 1

    .line 144
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    return-object v0
.end method

.method public static getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;
    .locals 1

    .line 136
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 55
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.3.9"

    return-object v0
.end method

.method public static getTvcResultListener()Lcom/transsion/voicecamera/sdk/TVCResultListener;
    .locals 1

    .line 140
    sget-object v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I
    .locals 2

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/transsion/voicecamera/sdk/TransVCamera;->init(Landroid/content/Context;Ljava/io/File;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/io/File;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I
    .locals 3

    const-class v0, Lcom/transsion/voicecamera/sdk/TransVCamera;

    monitor-enter v0

    :try_start_0
    const-string v1, "VCSDK-TransVCamera"

    const-string v2, "TransVCamera init, version=0.3.9"

    .line 63
    invoke-static {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    .line 65
    monitor-exit v0

    return p0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x5

    .line 68
    monitor-exit v0

    return p0

    .line 70
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    if-eqz v1, :cond_2

    const-string p0, "VCSDK-TransVCamera"

    const-string p1, "initialized, please call deInit first"

    .line 71
    invoke-static {p0, p1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x3

    .line 72
    monitor-exit v0

    return p0

    :cond_2
    if-eqz p2, :cond_3

    .line 76
    :try_start_2
    sget-object v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {v1, p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setConfig(Lcom/transsion/voicecamera/sdk/TransVCConfig;)V

    .line 78
    :cond_3
    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mConfig:Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getLanguage()Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    move-result-object v1

    sget-object v2, Lcom/transsion/voicecamera/sdk/utils/LangEnum;->LANG_NONE:Lcom/transsion/voicecamera/sdk/utils/LangEnum;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_4

    const/4 p0, 0x6

    .line 79
    monitor-exit v0

    return p0

    .line 81
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aivoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setInternalStoragePath(Ljava/lang/String;)V

    .line 84
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getResultPublishPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/vendor/data_feedback"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setResultPublishPath(Ljava/lang/String;)V

    .line 92
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->getInstance()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    move-result-object p0

    sget-object v1, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->init(Landroid/content/Context;)V

    .line 96
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/voicecamera/sdk/utils/FileUtil;->modelFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 97
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/voicecamera/sdk/utils/FileUtil;->cpAssertFile2ExternalFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    :cond_7
    sput-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    .line 104
    new-instance p0, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;-><init>()V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    .line 105
    new-instance p2, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;

    sget-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    invoke-direct {p2, p3}, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;-><init>(Lcom/transsion/voicecamera/sdk/TVCResultListener;)V

    invoke-virtual {p0, p2}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->setASRModelResultListener(Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;)V

    .line 106
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->init()V

    .line 109
    new-instance p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;-><init>()V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    .line 110
    new-instance p2, Lcom/transsion/voicecamera/sdk/VADProcessHandler;

    sget-object p3, Lcom/transsion/voicecamera/sdk/TransVCamera;->mASRInstance:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-direct {p2, p3}, Lcom/transsion/voicecamera/sdk/VADProcessHandler;-><init>(Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;)V

    invoke-virtual {p0, p2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->setVadResultListener(Lcom/transsion/voicecamera/sdk/vad/VADResultListener;)V

    .line 111
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->init()V

    if-nez p1, :cond_8

    .line 115
    invoke-static {}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->getInstance()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    move-result-object p0

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 116
    new-instance p1, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;

    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p1, p2}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;-><init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->registerRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V

    .line 119
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mAudioInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->startRecording()Z

    goto :goto_1

    .line 121
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, ".wav"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 122
    new-instance p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;

    invoke-direct {p0, p1}, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;-><init>(Ljava/io/File;)V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    goto :goto_0

    .line 124
    :cond_9
    new-instance p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;

    invoke-direct {p0, p1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;-><init>(Ljava/io/File;)V

    sput-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    .line 126
    :goto_0
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    new-instance p1, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;

    sget-object p2, Lcom/transsion/voicecamera/sdk/TransVCamera;->mVADInstance:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-direct {p1, p2}, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;-><init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->setPcmReaderListener(Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;)V

    .line 127
    sget-object p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->mPcmReader:Lcom/transsion/voicecamera/sdk/file/ReaderThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->init()V

    :goto_1
    const/4 p0, 0x1

    .line 130
    sput-boolean p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->initialized:Z

    const-string p0, "VCSDK-TransVCamera"

    const-string p1, "TransVCamera init done!"

    .line 131
    invoke-static {p0, p1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x0

    .line 132
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSaveAudioData()Z
    .locals 1

    .line 188
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/TransVCamera;->saveAudioData:Z

    return v0
.end method

.method public static setSaveAudioData(Z)V
    .locals 0

    .line 184
    sput-boolean p0, Lcom/transsion/voicecamera/sdk/TransVCamera;->saveAudioData:Z

    return-void
.end method
