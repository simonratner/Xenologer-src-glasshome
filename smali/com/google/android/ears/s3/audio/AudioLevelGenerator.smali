.class public Lcom/google/android/ears/s3/audio/AudioLevelGenerator;
.super Ljava/lang/Object;
.source "AudioLevelGenerator.java"


# static fields
.field private static final AUDIO_METER_MAX_DB:F = 15.0f

.field private static final AUDIO_METER_MIN_DB:F = -2.0f


# instance fields
.field private final mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

.field private mNoiseLevel:F


# direct methods
.method public constructor <init>(Lcom/google/android/ears/s3/audio/AudioListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    .line 19
    const/high16 v0, 0x4296

    iput v0, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    .line 20
    return-void
.end method

.method private static calculateRms([BII)F
    .locals 13
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .local v3, sumx:J
    const-wide/16 v5, 0x0

    .line 49
    .local v5, sumxx:J
    div-int/lit8 v1, p2, 0x2

    .line 51
    .local v1, samples:I
    add-int v0, p1, p2

    .line 52
    .local v0, i:I
    :goto_0
    add-int/lit8 v9, p1, 0x2

    if-lt v0, v9, :cond_0

    .line 53
    add-int/lit8 v9, v0, -0x1

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v0, -0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    int-to-short v2, v9

    .line 54
    .local v2, smp:S
    int-to-long v9, v2

    add-long/2addr v3, v9

    .line 55
    mul-int v9, v2, v2

    int-to-long v9, v9

    add-long/2addr v5, v9

    .line 56
    add-int/lit8 v0, v0, -0x2

    .line 57
    goto :goto_0

    .line 59
    .end local v2           #smp:S
    :cond_0
    int-to-long v9, v1

    mul-long/2addr v9, v5

    mul-long v11, v3, v3

    sub-long/2addr v9, v11

    mul-int v11, v1, v1

    int-to-long v11, v11

    div-long/2addr v9, v11

    long-to-double v7, v9

    .line 60
    .local v7, variance:D
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    return v9
.end method

.method public static convertRmsDbToVolume(F)I
    .locals 3
    .parameter "rmsdB"

    .prologue
    const/high16 v2, -0x4000

    .line 67
    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 68
    const/high16 v1, 0x4170

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 69
    sub-float v1, p0, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    const/high16 v2, 0x4188

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 72
    .local v0, volume:I
    return v0
.end method


# virtual methods
.method public update([BII)V
    .locals 6
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 27
    if-lez p3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 29
    iget-object v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->calculateRms([BII)F

    move-result v0

    .line 31
    .local v0, rms:F
    iget v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 32
    const v2, 0x3f7fbe77

    iget v3, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    mul-float/2addr v2, v3

    const v3, 0x3a83126f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    .line 37
    :goto_1
    const/high16 v1, -0x3d10

    .line 38
    .local v1, snr:F
    iget v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    div-float v2, v0, v2

    float-to-double v2, v2

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 39
    const/high16 v2, 0x4120

    iget v3, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    div-float v3, v0, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v1, v2, v3

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mAudioListener:Lcom/google/android/ears/s3/audio/AudioListener;

    invoke-static {v1}, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->convertRmsDbToVolume(F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/ears/s3/audio/AudioListener;->postAudioLevel(I)V

    .line 44
    .end local v0           #rms:F
    .end local v1           #snr:F
    :cond_1
    return-void

    .line 27
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 34
    .restart local v0       #rms:F
    :cond_3
    const v2, 0x3f733333

    iget v3, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/ears/s3/audio/AudioLevelGenerator;->mNoiseLevel:F

    goto :goto_1
.end method
