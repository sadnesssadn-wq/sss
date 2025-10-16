.class public Lc/b/l/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lc/b/l/h;


# direct methods
.method public constructor <init>(Lc/b/l/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/l/d;->a:Lc/b/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f08020e

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lc/b/l/d;->a:Lc/b/l/h;

    const-string p2, "C"

    .line 1
    iput-object p2, p1, Lc/b/l/h;->E:Ljava/lang/String;

    return-void

    :cond_0
    const p1, 0x7f08020d

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lc/b/l/d;->a:Lc/b/l/h;

    const-string p2, "P"

    .line 3
    iput-object p2, p1, Lc/b/l/h;->E:Ljava/lang/String;

    :cond_1
    return-void
.end method
