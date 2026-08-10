.class public Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;
.super Ljava/lang/Object;
.source "FloatAudioCache.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private audioBuffer:[F

.field private capacity:I

.field private consume_index:I

.field private current_index:I

.field private dataLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VCSDK-AudioCache"

    .line 7
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->TAG:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    .line 18
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    .line 19
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    .line 20
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    .line 21
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VCSDK-AudioCache"

    .line 7
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->TAG:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    .line 27
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    .line 28
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    .line 29
    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add([F)I
    .locals 5

    .line 49
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget v3, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    iget v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    if-lt v3, v4, :cond_4

    sub-int/2addr v1, v3

    .line 56
    array-length v0, p1

    .line 57
    array-length v4, p1

    if-le v1, v4, :cond_1

    .line 58
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    goto :goto_0

    .line 60
    :cond_1
    array-length v4, p1

    if-ne v1, v4, :cond_2

    .line 61
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    goto :goto_0

    .line 64
    :cond_2
    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {p1, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v3, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    array-length v4, p1

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_3

    .line 66
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    add-int v0, v1, p1

    goto :goto_0

    :cond_4
    sub-int v0, v1, v0

    .line 76
    array-length v1, p1

    .line 77
    array-length v4, p1

    if-lt v0, v4, :cond_5

    .line 78
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    move v0, v1

    goto :goto_0

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    .line 87
    :goto_0
    iget p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    return v0

    .line 50
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringbuffer add, dataLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capacity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " or buffer is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    .line 35
    iput v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    .line 36
    iput v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    return-void
.end method

.method public getAudioBuffer(I)[F
    .locals 5

    .line 113
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, p1, :cond_1

    move p1, v0

    .line 118
    :cond_1
    new-array v0, p1, [F

    .line 119
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    iget v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 120
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    goto :goto_0

    .line 123
    :cond_2
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    sub-int/2addr v1, v2

    if-le v1, p1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    goto :goto_0

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    sub-int v4, p1, v1

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    .line 134
    :goto_0
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioWithFuture(II)[F
    .locals 5

    .line 139
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    if-lt v0, p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    new-array v0, p2, [F

    .line 145
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    iget v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    goto :goto_0

    .line 149
    :cond_1
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    sub-int/2addr v1, v2

    if-lt v1, p2, :cond_2

    .line 151
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    sub-int/2addr p2, v1

    invoke-static {v2, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le v1, p1, :cond_3

    .line 157
    iget p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    goto :goto_0

    :cond_3
    sub-int p2, p1, v1

    .line 159
    iput p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    .line 164
    :goto_0
    iget p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioWithoutConsume(I)[F
    .locals 5

    .line 92
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, p1, :cond_1

    move p1, v0

    .line 96
    :cond_1
    new-array v0, p1, [F

    .line 97
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->current_index:I

    iget v2, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->consume_index:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 98
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {p0, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 100
    :cond_2
    iget v1, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    sub-int/2addr v1, v2

    if-le v1, p1, :cond_3

    .line 102
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {p0, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->audioBuffer:[F

    sub-int/2addr p1, v1

    invoke-static {p0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    return p0
.end method

.method public isFull()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->dataLength:I

    iget p0, p0, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->capacity:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
