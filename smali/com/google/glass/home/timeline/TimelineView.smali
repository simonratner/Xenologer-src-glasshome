.class public abstract Lcom/google/glass/home/timeline/TimelineView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;,
        Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Lcom/google/glass/timeline/TimelineItemId;",
        "Lcom/google/googlex/glass/common/proto/TimelineItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

.field private wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/TimelineView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineView;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineView;->setWillNotDraw(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->onRenderStart()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->onRenderEnd()V

    .line 143
    :cond_1
    return-void
.end method

.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, matched:Z
    const/4 v3, -0x1

    .line 218
    .local v3, result:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v5, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 219
    iget-object v5, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 220
    .local v4, wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v4, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 218
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v4, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 226
    invoke-virtual {v4, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v3

    .line 227
    if-ltz v3, :cond_0

    .line 228
    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/TimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 233
    .end local v4           #wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    :cond_2
    return v3
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/glass/timeline/TimelineItemId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 238
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineView;->findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;->findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineItem;)I

    move-result v0

    return v0
.end method

.method getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I
    .locals 6
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, w:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    const/4 v2, 0x0

    .line 263
    .local v2, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 264
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 265
    .local v3, wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    if-ne v3, p1, :cond_0

    .line 266
    return v2

    .line 268
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v3           #wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not our adapter."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getMaxItemTimestamp(Z)J
    .locals 5
    .parameter "pinned"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 283
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "view"

    .prologue
    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 249
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 250
    .local v3, wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 251
    .local v0, count:I
    if-ge p1, v0, :cond_0

    .line 252
    invoke-virtual {v3, p1, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->rebind(ILandroid/view/View;)V

    .line 253
    return-void

    .line 255
    :cond_0
    sub-int/2addr p1, v0

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v0           #count:I
    .end local v3           #wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method varargs setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V
    .locals 11
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, newWrappers:[Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"[Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    const/4 v10, 0x0

    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    .line 155
    array-length v8, p1

    if-nez v8, :cond_1

    .line 156
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/glass/home/timeline/TimelineView;->setAdapter(Landroid/widget/Adapter;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    array-length v8, p1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 162
    iget-object v8, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    aget-object v9, p1, v10

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    aget-object v8, p1, v10

    invoke-virtual {v8}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/glass/home/timeline/TimelineView;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_0

    .line 168
    :cond_2
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    .line 169
    .local v6, second:Landroid/widget/Adapter;
    array-length v8, p1

    add-int/lit8 v8, v8, -0x2

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 170
    .local v2, first:Landroid/widget/Adapter;
    new-instance v1, Lcom/google/glass/util/CompositeAdapter;

    invoke-direct {v1, v2, v6}, Lcom/google/glass/util/CompositeAdapter;-><init>(Landroid/widget/Adapter;Landroid/widget/Adapter;)V

    .line 171
    .local v1, compositeAdapter:Lcom/google/glass/util/CompositeAdapter;
    array-length v8, p1

    add-int/lit8 v3, v8, -0x3

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_3

    .line 172
    aget-object v8, p1, v3

    invoke-virtual {v8}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 173
    move-object v6, v1

    .line 174
    new-instance v1, Lcom/google/glass/util/CompositeAdapter;

    .end local v1           #compositeAdapter:Lcom/google/glass/util/CompositeAdapter;
    invoke-direct {v1, v2, v6}, Lcom/google/glass/util/CompositeAdapter;-><init>(Landroid/widget/Adapter;Landroid/widget/Adapter;)V

    .line 171
    .restart local v1       #compositeAdapter:Lcom/google/glass/util/CompositeAdapter;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineView;->setAdapter(Landroid/widget/Adapter;)V

    .line 179
    move-object v0, p1

    .local v0, arr$:[Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 180
    .local v7, wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    iget-object v8, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setUiPerformanceLog(Lcom/google/glass/home/timeline/UiPerformanceLog;)V
    .locals 0
    .parameter "uiPerformanceLog"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineView;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    .line 132
    return-void
.end method

.method public updateQueryParameters()V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->updateQueryParameters()V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public waitForLoad(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "id"
    .parameter "onLoad"

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, matched:Z
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 201
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 202
    .local v3, wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v3, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 200
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v3, p1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 208
    invoke-virtual {v3, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->waitForLoad(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 212
    .end local v3           #wrapper:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    :cond_2
    return-void
.end method
