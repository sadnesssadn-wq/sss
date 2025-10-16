.class public Lc/b/l/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lc/b/l/h;


# direct methods
.method public constructor <init>(Lc/b/l/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/l/e;->a:Lc/b/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0801fe

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lc/b/l/e;->a:Lc/b/l/h;

    const-string p2, "H"

    .line 1
    iput-object p2, p1, Lc/b/l/h;->E:Ljava/lang/String;

    :cond_0
    return-void
.end method
