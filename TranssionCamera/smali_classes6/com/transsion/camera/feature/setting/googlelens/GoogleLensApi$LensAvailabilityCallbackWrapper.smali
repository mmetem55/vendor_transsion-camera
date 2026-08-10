.class final Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;
.super Ljava/lang/Object;
.source "GoogleLensApi.java"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LensAvailabilityCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;->mCallback:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;

    return-void
.end method


# virtual methods
.method public onAvailabilityStatusFetched(I)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailabilityStatusFetched status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 124
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi$LensAvailabilityCallbackWrapper;->mCallback:Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;

    if-nez p0, :cond_1

    .line 125
    invoke-static {}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLensApi;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mCallback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatusCallback;->onLensStatusFetched(I)V

    return-void
.end method
