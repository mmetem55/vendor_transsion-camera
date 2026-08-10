.class public Lcom/transsion/ardrawlines/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field public static final PACKAGE_NAME_KEY:Ljava/lang/String; = "packagename"

.field public static final PERMISSION_ACTION:Ljava/lang/String; = "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

.field public static final PREF_NUM_TIMES_ASKED_AUDIO_PERMISSIONS:Ljava/lang/String; = "count_asked_for_audio_permissions"

.field public static final PREF_NUM_TIMES_ASKED_CAMERA_PERMISSIONS:Ljava/lang/String; = "count_asked_for_camera_permissions"

.field public static final PREF_NUM_TIMES_ASKED_PHONE_STATE_PERMISSIONS:Ljava/lang/String; = "count_asked_for_phone_state_permissions"

.field public static final PREF_NUM_TIMES_ASKED_STORAGE_PERMISSIONS:Ljava/lang/String; = "count_asked_for_storage_permission"

.field public static final REQUEST_CODE_ALL_PERMISSION:I = 0x4

.field public static final REQUEST_CODE_ALL_PERMISSIONS:I = 0x3e9

.field public static final REQUEST_CODE_AUDIO_PERMISSION:I = 0x0

.field public static final REQUEST_CODE_CAMERA_PERMISSION:I = 0x2

.field public static final REQUEST_CODE_LAUNCH_PERMISSIONS:I = 0x64

.field public static final REQUEST_CODE_PHONE_STATE:I = 0x3

.field public static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x1

.field public static final SHARED_PREFERENCE_FILE_NAME:Ljava/lang/String; = "permission_shared_preferences_file_name"

.field public static final TAG:Ljava/lang/String; = "PermissionManager"

.field public static mAllPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.READ_PHONE_STATE"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/ardrawlines/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioPermission(Landroid/app/Activity;)V
    .locals 1

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->hasDenyNotAskAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredPermissionsSystemDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->requestAudioPermission(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkCameraPermission(Landroid/app/Activity;)V
    .locals 1

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->hasDenyNotAskCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredPermissionsSystemDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->requestCameraPermission(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkReadPhoneStatePermission(Landroid/app/Activity;)V
    .locals 1

    .line 243
    :try_start_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->hasDenyNotAskReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredPermissionsSystemDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->requestReadPhoneStatePermission(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkStoragePermission(Landroid/app/Activity;)V
    .locals 1

    .line 167
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredManageStoragePermissionSystemDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static getDenyPermissionList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 361
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 362
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 364
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 365
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    :cond_4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    const-string p1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz p0, :cond_5

    .line 369
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 370
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 374
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_6
    :goto_1
    sget-object p0, Lcom/transsion/ardrawlines/permission/PermissionManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDenyPermissionList : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNeedCheckPermissionList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    .line 313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 321
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 322
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 324
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 325
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    :cond_4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    const-string p1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz p0, :cond_5

    .line 329
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 330
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 334
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_6
    :goto_1
    sget-object p0, Lcom/transsion/ardrawlines/permission/PermissionManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeedCheckPermissionList : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const-string v0, "permission_shared_preferences_file_name"

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 401
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hasAudioPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 103
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasCameraPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 186
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasDenyNotAskAudioPermission(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "count_asked_for_audio_permissions"

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 116
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static hasDenyNotAskCameraPermission(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "count_asked_for_camera_permissions"

    const/4 v1, 0x0

    .line 198
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 199
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 200
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static hasDenyNotAskReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "count_asked_for_phone_state_permissions"

    const/4 v1, 0x0

    .line 233
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 234
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 235
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static hasDenyNotAskStoragePermission(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "count_asked_for_storage_permission"

    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 157
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static hasReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 221
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .locals 1

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasStoragePermission: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "permission message"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0
.end method

.method public static isAllNeedPermissionsGranted(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 262
    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getNeedCheckPermissionList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 263
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static launchApplicationDetailsSettings(Landroid/content/Context;)V
    .locals 4

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launchManageStoragePermissionSettings(Landroid/content/Context;)V
    .locals 4

    .line 80
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->launchApplicationDetailsSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static launchPermissionDetailsSettings(Landroid/content/Context;)V
    .locals 3

    .line 66
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->launchApplicationDetailsSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static requestAudioPermission(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "count_asked_for_audio_permissions"

    .line 109
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 110
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->setPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static requestCameraPermission(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 191
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "count_asked_for_camera_permissions"

    const/4 v1, 0x0

    .line 192
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 193
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->setPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static requestLaunchPermissions(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 281
    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getNeedCheckPermissionList(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 286
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x64

    .line 285
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 288
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->showRequiredManageStoragePermissionSystemDialog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return v0

    .line 297
    :cond_1
    sget-object p0, Lcom/transsion/ardrawlines/permission/PermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "requestCameraLaunchPermissions(), all on"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static requestReadPhoneStatePermission(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 226
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "count_asked_for_phone_state_permissions"

    const/4 v1, 0x0

    .line 227
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 228
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->setPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static requestStoragePermission(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "count_asked_for_storage_permission"

    const/4 v2, 0x0

    .line 149
    invoke-static {p0, v0, v2}, Lcom/transsion/ardrawlines/permission/PermissionManager;->getPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    .line 150
    invoke-static {p0, v0, v2}, Lcom/transsion/ardrawlines/permission/PermissionManager;->setPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static setPermissionSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "permission_shared_preferences_file_name"

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 391
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 392
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showRequiredManageStoragePermissionSystemDialog(Landroid/content/Context;)V
    .locals 3

    .line 437
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/ardrawlines/R$string;->reminder:I

    .line 438
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->reminder_permission:I

    .line 439
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->settings_permissions:I

    .line 440
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/ardrawlines/permission/PermissionManager$4;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/permission/PermissionManager$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->discard_ar:I

    .line 447
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/transsion/ardrawlines/permission/PermissionManager$3;

    invoke-direct {v1}, Lcom/transsion/ardrawlines/permission/PermissionManager$3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p0

    .line 453
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method

.method public static showRequiredPermissionsSystemDialog(Landroid/content/Context;)V
    .locals 3

    .line 411
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/ardrawlines/R$string;->reminder:I

    .line 412
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->reminder_permission:I

    .line 413
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->settings_permissions:I

    .line 414
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/ardrawlines/permission/PermissionManager$2;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/permission/PermissionManager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->discard_ar:I

    .line 421
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/transsion/ardrawlines/permission/PermissionManager$1;

    invoke-direct {v1}, Lcom/transsion/ardrawlines/permission/PermissionManager$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p0

    .line 427
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method
