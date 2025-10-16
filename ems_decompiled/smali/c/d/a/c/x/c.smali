.class public final Lc/d/a/c/x/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/c/x/b;

.field public final b:Lc/d/a/c/x/b;

.field public final c:Lc/d/a/c/x/b;

.field public final d:Lc/d/a/c/x/b;

.field public final e:Lc/d/a/c/x/b;

.field public final f:Lc/d/a/c/x/b;

.field public final g:Lc/d/a/c/x/b;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lc/d/a/c/b;->materialCalendarStyle:I

    const-class v1, Lc/d/a/c/x/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->G0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lc/d/a/c/l;->MaterialCalendar:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lc/d/a/c/l;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/c;->a:Lc/d/a/c/x/b;

    sget v1, Lc/d/a/c/l;->MaterialCalendar_dayInvalidStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/c;->g:Lc/d/a/c/x/b;

    sget v1, Lc/d/a/c/l;->MaterialCalendar_daySelectedStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/c;->b:Lc/d/a/c/x/b;

    sget v1, Lc/d/a/c/l;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/c;->c:Lc/d/a/c/x/b;

    sget v1, Lc/d/a/c/l;->MaterialCalendar_rangeFillColor:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, Lc/d/a/c/l;->MaterialCalendar_yearStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v3

    iput-object v3, p0, Lc/d/a/c/x/c;->d:Lc/d/a/c/x/b;

    sget v3, Lc/d/a/c/l;->MaterialCalendar_yearSelectedStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object v3

    iput-object v3, p0, Lc/d/a/c/x/c;->e:Lc/d/a/c/x/b;

    sget v3, Lc/d/a/c/l;->MaterialCalendar_yearTodayStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Lc/d/a/c/x/b;->a(Landroid/content/Context;I)Lc/d/a/c/x/b;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/x/c;->f:Lc/d/a/c/x/b;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc/d/a/c/x/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
