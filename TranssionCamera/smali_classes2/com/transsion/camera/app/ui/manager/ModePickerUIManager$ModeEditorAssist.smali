.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeEditorAssist"
.end annotation


# instance fields
.field private mAllModeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCameraID:Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mModesNumberInTab:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "0"

    .line 1145
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1151
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flashModeList()V
    .locals 4

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1217
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1218
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 1219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public flashModeListCurrentCamera()V
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    .line 1155
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 1158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1160
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1162
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1163
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1170
    :cond_3
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 1171
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    .line 1172
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeList()V

    .line 1173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 7

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsResumeAfterEdit(Z)V

    .line 1178
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1180
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1185
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateCurrentCamera] mCurrentCameraID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " facingBack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1187
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "backarcoreposition"

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1188
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "backmovieposition"

    invoke-virtual {p1, v5, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1189
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backmainmodescount"

    invoke-virtual {p1, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 1191
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frontarcoreposition"

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1192
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frontmovieposition"

    invoke-virtual {p1, v5, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1193
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "frontmainmodescount"

    invoke-virtual {p1, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1196
    :goto_0
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    add-int/lit8 v6, p1, 0x1

    if-ge v3, v6, :cond_1

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v4, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v4, p1, 0x1

    if-ge v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_3

    .line 1208
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    .line 1211
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsResumeAfterEdit(Z)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1223
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1224
    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1225
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCurrentModes] camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " facingBack:"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1227
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 1228
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1229
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p3, p3, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1230
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1232
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 1233
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1234
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p3, p3, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 1235
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$3400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1237
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZ)V

    return-void
.end method
